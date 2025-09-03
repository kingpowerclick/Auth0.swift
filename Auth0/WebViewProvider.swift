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
public extension WebAuthentication
{

    static func webViewProvider(style: UIModalPresentationStyle = .fullScreen) -> WebAuthProvider
    {
        return { url, callback  in
            let redirectURL = extractRedirectURL(from: url)!

            return WebViewUserAgent(
                authorizeURL: url,
                redirectURL: redirectURL,
                modalPresentationStyle: style,
                callback: callback)
        }
    }

}

class WebViewUserAgent: NSObject, WebAuthUserAgent {
    let controller: WebViewController
    let callback: WebAuthProviderCallback

    init(
        authorizeURL: URL,
        redirectURL: URL,
        modalPresentationStyle: UIModalPresentationStyle = .fullScreen,
        callback: @escaping WebAuthProviderCallback)
    {
        
        self.controller = WebViewController(
            authorizeURL: authorizeURL,
            redirectURL: redirectURL,
            style: modalPresentationStyle)
        self.callback = callback
        
        super.init()

        self.controller.finishHandler = { result in
            self.finish(with: result)
        }
    }

    func start() {
        UIWindow.topViewController?.present(controller, animated: true)
    }

    func finish(with result: WebAuthResult<Void>) {
        DispatchQueue.main.async { [unowned controller, callback] in
            controller.dismiss(animated: true) {
                callback(result)
            }
        }
    }

    public override var description: String {
        return String(describing: WKWebView.self)
    }

}

final class WebViewController: UIViewController {
    fileprivate static let customSchemeRedirectionSuccessMessage = "com.auth0.webview.redirection_success"
    fileprivate static let customSchemeRedirectionFailureMessage = "com.auth0.webview.redirection_failure"
    private let defaultSchemesSupportedByWKWebview = ["https"]
    
    private var webView: WKWebView?
    private let request: URLRequest
    private let redirectURL: URL
    private var loadingIndicator: UIActivityIndicatorView?
    
    var finishHandler: ((WebAuthResult<Void>) -> Void)?
    
    init(
        authorizeURL: URL,
        redirectURL: URL,
        style: UIModalPresentationStyle)
    {
        self.request = URLRequest(url: authorizeURL)
        self.redirectURL = redirectURL
        
        super.init(nibName: nil, bundle: nil)
        
        self.modalPresentationStyle = style
        
        if !defaultSchemesSupportedByWKWebview.contains(redirectURL.scheme!) {
            let configuration = WKWebViewConfiguration()
            configuration.setURLSchemeHandler(self, forURLScheme: redirectURL.scheme!)
            self.webView = WKWebView(frame: .zero, configuration: configuration)
        } else {
            self.webView = WKWebView(frame: .zero)
        }
        
        self.view = webView
        self.configurationSubviews()
        self.webView?.navigationDelegate = self
        self.isModalInPresentation = true
        
        self.webView?.load(self.request)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configurationSubviews()
    {
        let closeButton = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 36, weight: .regular)
        let closeImage = UIImage(systemName: "xmark.circle.fill", withConfiguration: config)
        closeButton.setImage(closeImage, for: .normal)
        closeButton.tintColor = .white
        closeButton.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(closeButton)
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8),
            closeButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            closeButton.widthAnchor.constraint(equalToConstant: 36),
            closeButton.heightAnchor.constraint(equalToConstant: 36)
        ])
        
        // Setup loading indicator
        loadingIndicator = UIActivityIndicatorView(style: .large)
        loadingIndicator?.color = .gray
        loadingIndicator?.translatesAutoresizingMaskIntoConstraints = false
        if let loadingIndicator = loadingIndicator {
            self.view.addSubview(loadingIndicator)
            NSLayoutConstraint.activate([
                loadingIndicator.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                loadingIndicator.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ])
        }
    }
    
    @objc private func closeTapped() {
        finishHandler?(.failure(WebAuthError(code: .userCancelled)))
    }
}

/// Handling of Custom Scheme callbacks.
extension WebViewController: WKURLSchemeHandler {

    func webView(_ webView: WKWebView, start urlSchemeTask: any WKURLSchemeTask) {
        guard let url = urlSchemeTask.request.url else {
            return
        }
        
        _ = TransactionStore.shared.resume(url)
        
        // Stop loading indicator when redirected back to the app
        loadingIndicator?.stopAnimating()
        
        let error = NSError(domain: WebViewController.customSchemeRedirectionSuccessMessage, code: 200, userInfo: [
            NSLocalizedDescriptionKey: "WebViewProvider: WKURLSchemeHandler: Succesfully redirected back to the app"
        ])
        
        urlSchemeTask.didFailWithError(error)
    }

    func webView(_ webView: WKWebView, stop urlSchemeTask: any WKURLSchemeTask) {
        // Stop loading indicator when resource loading is stopped
        loadingIndicator?.stopAnimating()
        
        let error = NSError(domain: WebViewController.customSchemeRedirectionFailureMessage, code: 400, userInfo: [
            NSLocalizedDescriptionKey: "WebViewProvider: WKURLSchemeHandler: Webview Resource Loading has been stopped"
        ])
        urlSchemeTask.didFailWithError(error)
        
        finishHandler?(.failure(WebAuthError(code: .webViewFailure("The WebView's resource loading was stopped."))))
    }
}

/// Handling of HTTPS callbacks.
extension WebViewController: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        // Show loading indicator when navigation starts
        loadingIndicator?.startAnimating()
        
        if let callbackUrl = navigationAction.request.url,
           callbackUrl.absoluteString.starts(with: redirectURL.absoluteString),
           let scheme = callbackUrl.scheme,
           scheme == "https"
        {
            _ = TransactionStore.shared.resume(callbackUrl)
            loadingIndicator?.stopAnimating()
            decisionHandler(.cancel)
        }
        else
        {
            print("decidePolicyFor: \(navigationAction.request.url?.absoluteString ?? "")")
            if navigationAction.targetFrame?.isMainFrame == true
            {
                print("→ Main frame navigation")
            }
            else
            {
                print("→ NOT main frame navigation")
            }
            decisionHandler(.allow)
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        // Stop loading indicator when page finishes loading
        loadingIndicator?.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        // Stop loading indicator when navigation fails
        loadingIndicator?.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        // Stop loading indicator when provisional navigation fails
        loadingIndicator?.stopAnimating()
    }
    
    func webViewWebContentProcessDidTerminate(_ webView: WKWebView) {
        // Stop loading indicator when content process terminates
        loadingIndicator?.stopAnimating()
    }
}

#endif
