//
//  WebViewProvider.swift
//  Auth0
//
//  Created by Desu Sai Venkat on 18/09/24.
//  Copyright © 2024 Auth0. All rights reserved.
//

#if os(iOS)

@preconcurrency import WebKit

/// Creates a Web Auth provider that uses `WKWebView` as the embedded user agent.
/// Unlike `SFSafariViewController`, `WKWebView` supports using Universal Links as callback URLs.
///
/// ## Usage
///
/// ```swift
/// Auth0
///     .webAuth()
///     .provider(WebAuthentication.webViewProvider())
///     .start { result in
///         // ...
/// }
/// ```
///
/// If you need to specify a custom `UIModalPresentationStyle`:
///
/// ```swift
/// Auth0
///     .webAuth()
///     .provider(WebAuthentication.webViewProvider(style: .formSheet))
///     .start { result in
///         // ...
/// }
/// ```
///
/// - Parameter style: `UIModalPresentationStyle` to be used. Defaults to `.fullScreen`.
/// - Parameter presentationWindow: Optional `UIWindow/NSWindow` to use for presenting the browser. If not specified,
/// the active key window will be used.
/// - Returns: A ``WebAuthProvider`` instance.
///
/// > Note: To use Universal Login's biometrics and passkeys with `WKWebView`, you must
/// [set up an associated domain](https://github.com/auth0/Auth0.swift#configure-an-associated-domain).
///
/// > Warning: The use of `WKWebView` for performing web-based authentication [is not recommended](https://auth0.com/blog/oauth-2-best-practices-for-native-apps),
/// and some social identity providers –such as Google– do not support it.
///
/// ## See Also
///
/// - [OAuth 2.0 Best Practices for Native Apps](https://auth0.com/blog/oauth-2-best-practices-for-native-apps)
public extension WebAuthentication {
    @MainActor
    static func webViewProvider(style: UIModalPresentationStyle = .fullScreen,
                                presentationWindow: Auth0WindowRepresentable? = nil) -> WebAuthProvider {
        return { url, callback  in
            let redirectURL = extractRedirectURL(from: url)!

            return WebViewUserAgent(authorizeURL: url,
                                    redirectURL: redirectURL,
                                    modalPresentationStyle: style,
                                    presentationWindow: presentationWindow,
                                    callback: callback)
        }
    }

}

final class WebViewUserAgent: NSObject, WebAuthUserAgent, Sendable {

    static let customSchemeRedirectionSuccessMessage = "com.auth0.webview.redirection_success"
    static let customSchemeRedirectionFailureMessage = "com.auth0.webview.redirection_failure"
    let defaultSchemesSupportedByWKWebview = ["https"]

    nonisolated let request: URLRequest
    @MainActor
    var webview: WKWebView!
    let viewController: UIViewController
    let redirectURL: URL
    let callback: WebAuthProviderCallback
    @MainActor
    private weak var presentationWindow: Auth0WindowRepresentable?
    @MainActor
    private var loadingIndicator: UIActivityIndicatorView?
    @MainActor
    private var isFinished = false

    @MainActor
    init(authorizeURL: URL,
         redirectURL: URL,
         viewController: UIViewController = UIViewController(),
         modalPresentationStyle: UIModalPresentationStyle = .fullScreen,
         presentationWindow: UIWindow? = nil,
         callback: @escaping WebAuthProviderCallback) {
        self.request = URLRequest(url: authorizeURL)
        self.redirectURL = redirectURL
        self.callback = callback
        self.viewController = viewController
        self.viewController.modalPresentationStyle = modalPresentationStyle
        self.presentationWindow = presentationWindow

        super.init()
        if !defaultSchemesSupportedByWKWebview.contains(redirectURL.scheme!) {
            self.setupWebViewWithCustomScheme()
        } else {
            self.setupWebViewWithHTTPS()
        }
    }

    @MainActor
    private func setupWebViewWithCustomScheme() {
        let configuration = WKWebViewConfiguration()
        configuration.setURLSchemeHandler(self, forURLScheme: redirectURL.scheme!)
        self.webview = WKWebView(frame: .zero, configuration: configuration)
        self.viewController.view = webview
        self.configurationSubviews()
        webview.navigationDelegate = self
    }

    @MainActor
    private func setupWebViewWithHTTPS() {
        self.webview = WKWebView(frame: .zero)
        self.viewController.view = webview
        self.configurationSubviews()
        webview.navigationDelegate = self
    }

    @MainActor
    private func configurationSubviews() {
        let view: UIView = self.viewController.view

        let closeButton = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 36, weight: .regular)
        let closeImage = UIImage(systemName: "xmark.circle.fill", withConfiguration: config)
        closeButton.setImage(closeImage, for: .normal)
        closeButton.tintColor = .white
        closeButton.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(closeButton)
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            closeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            closeButton.widthAnchor.constraint(equalToConstant: 36),
            closeButton.heightAnchor.constraint(equalToConstant: 36)
        ])

        let loadingIndicator = UIActivityIndicatorView(style: .large)
        loadingIndicator.color = .gray
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadingIndicator)
        NSLayoutConstraint.activate([
            loadingIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        self.loadingIndicator = loadingIndicator

        // The close button is the only way to dismiss; disable swipe-to-dismiss
        self.viewController.isModalInPresentation = true
    }

    @MainActor
    @objc private func closeTapped() {
        // Cancels the current transaction, which finishes this user agent with `.userCancelled`
        TransactionStore.shared.cancel()
    }

    func start() {
        Task { @MainActor [weak self] in
            guard let self else { return }
            startOnMain()
        }
    }
    
    @MainActor
    private func startOnMain() {
        self.webview.load(self.request)
        let topViewController: UIViewController?
        // Use top view controller from custom window if provided
        if let window = presentationWindow,
           let rootVC = window.rootViewController {
            topViewController = Auth0WindowRepresentable.findTopViewController(from: rootVC)
        } else {
            // Fall back to key window's top view controller
            topViewController = Auth0WindowRepresentable.topViewController
        }
        topViewController?.present(self.viewController, animated: true) { [weak self] in
            self?.viewController.presentationController?.delegate = self
        }
    }
    
    func finish(with result: WebAuthResult<Void>) {
        Task {
            @MainActor in
            finishOnMain(with: result)
        }
    }
    
    @MainActor
    private func finishOnMain(with result: WebAuthResult<Void>) {
        // Cancelling the navigation to the redirect URL makes WebKit report a "Frame load interrupted" failure
        // after the transaction has already finished this user agent, so only the first result is delivered
        guard !isFinished else { return }
        isFinished = true
        guard let presenting = viewController.presentingViewController else {
            webview?.removeFromSuperview()
            let error = WebAuthError(code: .unknown("Cannot dismiss WKWebView"))
            return callback(.failure(error))
        }
        presenting.dismiss(animated: true) {
            // Remove the web view after the dismissal animation, to avoid a blank sheet while dismissing
            self.webview?.removeFromSuperview()
            self.callback(result)
        }
    }

    public override var description: String {
        return String(describing: WKWebView.self)
    }

}

/// Handling of Custom Scheme callbacks.
extension WebViewUserAgent: WKURLSchemeHandler {

    func webView(_ webView: WKWebView, start urlSchemeTask: any WKURLSchemeTask) {
        _ = TransactionStore.shared.resume(urlSchemeTask.request.url!)
        let error = NSError(domain: WebViewUserAgent.customSchemeRedirectionSuccessMessage, code: 200, userInfo: [
            NSLocalizedDescriptionKey: "WebViewProvider: WKURLSchemeHandler: Succesfully redirected back to the app"
        ])
        urlSchemeTask.didFailWithError(error)
    }

    func webView(_ webView: WKWebView, stop urlSchemeTask: any WKURLSchemeTask) {
        let error = NSError(domain: WebViewUserAgent.customSchemeRedirectionFailureMessage, code: 400, userInfo: [
            NSLocalizedDescriptionKey: "WebViewProvider: WKURLSchemeHandler: Webview Resource Loading has been stopped"
        ])
        urlSchemeTask.didFailWithError(error)
        self.finish(with: .failure(WebAuthError(code: .webViewFailure("The WebView's resource loading was stopped."))))
    }

}

/// Handling of HTTPS callbacks.
extension WebViewUserAgent: WKNavigationDelegate {

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction) async -> WKNavigationActionPolicy {
        if let callbackUrl = navigationAction.request.url, callbackUrl.absoluteString.starts(with: redirectURL.absoluteString), let scheme = callbackUrl.scheme, scheme == "https" {
            _ = TransactionStore.shared.resume(callbackUrl)
            return .cancel
        }
        return .allow
    }

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        loadingIndicator?.startAnimating()
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loadingIndicator?.stopAnimating()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: any Error) {
        loadingIndicator?.stopAnimating()
        if (error as NSError).domain == WebViewUserAgent.customSchemeRedirectionSuccessMessage {
            return
        }
        self.finish(with: .failure(WebAuthError(code: .webViewFailure("An error occurred during a committed main frame navigation of the WebView."), cause: error)))
    }

    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: any Error) {
        loadingIndicator?.stopAnimating()
        if (error as NSError).domain == WebViewUserAgent.customSchemeRedirectionSuccessMessage {
            return
        }
        self.finish(with: .failure(WebAuthError(code: .webViewFailure("An error occurred while starting to load data for the main frame of the WebView."), cause: error)))
    }

    func webViewWebContentProcessDidTerminate(_ webView: WKWebView) {
        loadingIndicator?.stopAnimating()
        self.finish(with: .failure(WebAuthError(code: .webViewFailure("The WebView's content process was terminated."))))
    }

}

extension WebViewUserAgent: UIAdaptivePresentationControllerDelegate {

    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        // If you are developing a custom Web Auth provider, call WebAuthentication.cancel() instead
        // TransactionStore is internal
        TransactionStore.shared.cancel()
    }

}

#endif
