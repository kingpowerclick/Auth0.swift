# Change Log

## [2.14.0](https://github.com/auth0/Auth0.swift/tree/2.14.0) (2025-05-30)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.12.0...2.14.0)

**Added**
- Add support for enrolling passkeys with My Account API [SDK-5543] [\#962](https://github.com/auth0/Auth0.swift/pull/962) ([Widcket](https://github.com/Widcket))

**Changed**
- Link JWTDecode.swift and SimpleKeychain directly to the Auth0 framework [\#947](https://github.com/auth0/Auth0.swift/pull/947) ([NandanPrabhu](https://github.com/NandanPrabhu))

## [2.12.0](https://github.com/auth0/Auth0.swift/tree/2.12.0) (2025-05-08)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.11.0...2.12.0)

**This release drops support for Xcode < 16.**

**Added**
- Added support for Multi-Resource Refresh Token (MRRT) [\#912](https://github.com/auth0/Auth0.swift/pull/912) ([Widcket](https://github.com/Widcket))
- Added support for logging in with passkey [SDK-4974] [\#944](https://github.com/auth0/Auth0.swift/pull/944) ([Widcket](https://github.com/Widcket))
- Added support for signing up with passkey [SDK-4974] [\#942](https://github.com/auth0/Auth0.swift/pull/942) ([Widcket](https://github.com/Widcket))

**Changed**
- Updated Swift version sent in `Auth0-Client` header [\#945](https://github.com/auth0/Auth0.swift/pull/945) ([Widcket](https://github.com/Widcket))
- `>=5.10` swift compiler checks removed after updating to Xcode 16 [\#937](https://github.com/auth0/Auth0.swift/pull/937) ([NandanPrabhu](https://github.com/NandanPrabhu))

## [2.11.0](https://github.com/auth0/Auth0.swift/tree/2.11.0) (2025-04-17)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.10.0...2.11.0)

**Added**
- Added support for Native to Web SSO [SDK-5543] [\#927](https://github.com/auth0/Auth0.swift/pull/927) ([Widcket](https://github.com/Widcket))
- Added support for custom headers when using `ASWebAuthenticationSession` [\#923](https://github.com/auth0/Auth0.swift/pull/923) ([Widcket](https://github.com/Widcket))
- Added `Sendable` conformance [\#919](https://github.com/auth0/Auth0.swift/pull/919) ([Widcket](https://github.com/Widcket))

**Changed**
- Updated SimpleKeychain and JWTDecode.swift [\#931](https://github.com/auth0/Auth0.swift/pull/931) ([Widcket](https://github.com/Widcket))

**Fixed**
- Prevented `ASWebAuthenticationSession` crash when browser reloads due to cookies being cleared [\#904](https://github.com/auth0/Auth0.swift/pull/904) ([Widcket](https://github.com/Widcket))

## [2.10.0](https://github.com/auth0/Auth0.swift/tree/2.10.0) (2024-10-14)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.9.0...2.10.0)

**Added**
- feat: added support for webview as a provider for webauth [\#875](https://github.com/auth0/Auth0.swift/pull/875) ([desusai7](https://github.com/desusai7))

## [2.9.0](https://github.com/auth0/Auth0.swift/tree/2.9.0) (2024-09-06)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.8.0...2.9.0)

**Added**
- feat: added support for visionOS platform [\#859](https://github.com/auth0/Auth0.swift/pull/859) ([desusai7](https://github.com/desusai7))

## [2.9.0-beta.0](https://github.com/auth0/Auth0.swift/tree/2.9.0-beta.0) (2024-07-05)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.8.0...2.9.0-beta.0)

**Added**
- feat: added support for visionOS platform [\#859](https://github.com/auth0/Auth0.swift/pull/859) ([desusai7](https://github.com/desusai7))

## [2.8.0](https://github.com/auth0/Auth0.swift/tree/2.8.0) (2024-06-19)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.7.2...2.8.0)

**Added**
- Add support for an authorize URL override [\#854](https://github.com/auth0/Auth0.swift/pull/854) ([erichoracek](https://github.com/erichoracek))

## [2.7.2](https://github.com/auth0/Auth0.swift/tree/2.7.2) (2024-05-08)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.7.1...2.7.2)

**Fixed**
- fix: removed the possibility of concurrent webauth transactions to handle continuation misuse [\#848](https://github.com/auth0/Auth0.swift/pull/848) ([desusai7](https://github.com/desusai7))
- fix: removed the validation of incoming redirect_uri once the webauth flow resumes back [\#850](https://github.com/auth0/Auth0.swift/pull/850) ([desusai7](https://github.com/desusai7))
- fix: added url error code dataNotAllowed as a network error [\#847](https://github.com/auth0/Auth0.swift/pull/847) ([desusai7](https://github.com/desusai7))

## [2.7.1](https://github.com/auth0/Auth0.swift/tree/2.7.1) (2024-05-03)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.7.0...2.7.1)

**Fixed**
- fix: fixed the declaration of the privacy manifest in Auth0.podspec [\#846](https://github.com/auth0/Auth0.swift/pull/846) ([desusai7](https://github.com/desusai7))

## [2.7.0](https://github.com/auth0/Auth0.swift/tree/2.7.0) (2024-04-12)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.6.0...2.7.0)

**Added**
- chore: Add privacy manifest to Auth0.Swift [\#841](https://github.com/auth0/Auth0.swift/pull/841) ([poovamraj](https://github.com/poovamraj))

## [2.6.0](https://github.com/auth0/Auth0.swift/tree/2.6.0) (2024-03-01)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.5.0...2.6.0)

**Added**
- Add support for HTTPS callbacks [SDK-4749] [\#832](https://github.com/auth0/Auth0.swift/pull/832) ([Widcket](https://github.com/Widcket))
- Add new error type to AuthenticationError [\#820](https://github.com/auth0/Auth0.swift/pull/820) ([lordzsolt](https://github.com/lordzsolt))

**Changed**
- Update PKCE-related messaging [\#789](https://github.com/auth0/Auth0.swift/pull/789) ([Widcket](https://github.com/Widcket))

**Deprecated**
- Deprecate methods related to updating user attributes using the Management API [\#815](https://github.com/auth0/Auth0.swift/pull/815) ([Widcket](https://github.com/Widcket))

**Fixed**
- Fix crash when the bundle ID contains characters not allowed in URL schemes [\#786](https://github.com/auth0/Auth0.swift/pull/786) ([Widcket](https://github.com/Widcket))

## [2.5.0](https://github.com/auth0/Auth0.swift/tree/2.5.0) (2023-07-18)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.4.0...2.5.0)

**Added**
- Add support for validating the  `org_name` claim [SDK-4414] [\#782](https://github.com/auth0/Auth0.swift/pull/782) ([Widcket](https://github.com/Widcket))
- Add more error pairs to `isMultifactorCodeInvalid` [SDK-4195] [\#779](https://github.com/auth0/Auth0.swift/pull/779) ([Widcket](https://github.com/Widcket))

## [2.4.0](https://github.com/auth0/Auth0.swift/tree/2.4.0) (2023-06-15)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.3.2...2.4.0)

**Added**
- Add `renew()` to Credentials Manager [SDK-4300] [\#772](https://github.com/auth0/Auth0.swift/pull/772) ([Widcket](https://github.com/Widcket))
- Add hook for web view closing [\#754](https://github.com/auth0/Auth0.swift/pull/754) ([xavierLowmiller](https://github.com/xavierLowmiller))

**Changed**
- Bump the minimum versions of JWTDecode.swift and SimpleKeychain [\#777](https://github.com/auth0/Auth0.swift/pull/777) ([Widcket](https://github.com/Widcket))

**Fixed**
- Fix unhandled dismissal of `SFSafariViewController` [\#758](https://github.com/auth0/Auth0.swift/pull/758) ([Widcket](https://github.com/Widcket))

**Removed**
- Drop support for iOS 12, tvOS 12, macOS 10.15, watch0S < 7, and Xcode 13 [\#775](https://github.com/auth0/Auth0.swift/pull/775) ([Widcket](https://github.com/Widcket))

## [2.3.2](https://github.com/auth0/Auth0.swift/tree/2.3.2) (2022-10-28)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.3.1...2.3.2)

**Fixed**
- Fix login web page cannot be open by canceling the AS session  [\#735](https://github.com/auth0/Auth0.swift/pull/735) ([hadiidbouk](https://github.com/hadiidbouk))

## [2.3.1](https://github.com/auth0/Auth0.swift/tree/2.3.1) (2022-07-29)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.3.0...2.3.1)

**Fixed**
- Fix Web Auth race condition [SDK-3522] [\#731](https://github.com/auth0/Auth0.swift/pull/731) ([Widcket](https://github.com/Widcket))

## [2.3.0](https://github.com/auth0/Auth0.swift/tree/2.3.0) (2022-07-22)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.2.0...2.3.0)

**Added**
- Expose error when storing renewed credentials fails [\#724](https://github.com/auth0/Auth0.swift/pull/724) ([Widcket](https://github.com/Widcket))
- Add `canRenew()` to the Credentials Manager [\#723](https://github.com/auth0/Auth0.swift/pull/723) ([Widcket](https://github.com/Widcket))

**Changed**
- Update SimpleKeychain to v1.0.0 & JWTDecode.swift to v3.0.0 [\#725](https://github.com/auth0/Auth0.swift/pull/725) ([Widcket](https://github.com/Widcket))

**Fixed**
- Fix async/await threading issues with Swift 5.7 [\#722](https://github.com/auth0/Auth0.swift/pull/722) ([Widcket](https://github.com/Widcket))

## [2.2.0](https://github.com/auth0/Auth0.swift/tree/2.2.0) (2022-07-14)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.1.0...2.2.0)

**Added**
- Add new error types to `AuthenticationError` [SDK-3492] [\#712](https://github.com/auth0/Auth0.swift/pull/712) ([Widcket](https://github.com/Widcket))

**Changed**
- Pin SimpleKeychain to v0.x [\#716](https://github.com/auth0/Auth0.swift/pull/716) ([Widcket](https://github.com/Widcket))
- Append the cause to the parent error message [\#714](https://github.com/auth0/Auth0.swift/pull/714) ([Widcket](https://github.com/Widcket))
- Apply recommended Xcode 14 settings [\#705](https://github.com/auth0/Auth0.swift/pull/705) ([Widcket](https://github.com/Widcket))

## [2.1.0](https://github.com/auth0/Auth0.swift/tree/2.1.0) (2022-05-26)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.0.1...2.1.0)

**Added**
- Add support for custom Web Auth providers [SDK-3338] [\#699](https://github.com/auth0/Auth0.swift/pull/699) ([Widcket](https://github.com/Widcket))

## [2.0.1](https://github.com/auth0/Auth0.swift/tree/2.0.1) (2022-04-29)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.0.0...2.0.1)

**Fixed**
- Send GET request parameters as query params [SDK-3324] [\#678](https://github.com/auth0/Auth0.swift/pull/678) ([Widcket](https://github.com/Widcket))

## [2.0.0](https://github.com/auth0/Auth0.swift/tree/2.0.0) (2022-03-14)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.39.0...2.0.0)

[Migration Guide](V2_MIGRATION_GUIDE.md)

## [2.0.0-beta.1](https://github.com/auth0/Auth0.swift/tree/2.0.0-beta.1) (2022-01-26)

[Full Changelog](https://github.com/auth0/Auth0.swift/compare/2.0.0-beta.0...2.0.0-beta.1)

[Migration Guide](V2_MIGRATION_GUIDE.md)

**Added**

- Add `isRefreshTokenDeleted` error [SDK-3079] [\#641](https://github.com/auth0/Auth0.swift/pull/641) ([Widcket](https://github.com/Widcket))

## [2.0.0-beta.0](https://github.com/auth0/Auth0.swift/tree/2.0.0-beta.0) (2022-01-17)

[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.38.0...2.0.0-beta.0)

[Migration Guide](V2_MIGRATION_GUIDE.md)

⚠️ **BREAKING CHANGES**

- Make `UserPatchAttributes` class final [\#611](https://github.com/auth0/Auth0.swift/pull/611) ([Widcket](https://github.com/Widcket))
- Remove remaining `parameters` parameter [\#607](https://github.com/auth0/Auth0.swift/pull/607) ([Widcket](https://github.com/Widcket))
- Rename `realm` parameter to `realmOrConnection` [\#602](https://github.com/auth0/Auth0.swift/pull/602) ([Widcket](https://github.com/Widcket))
- Make the `Challenge.CodingKeys` enum internal [\#601](https://github.com/auth0/Auth0.swift/pull/601) ([Widcket](https://github.com/Widcket))
- Rename `createUser` to `signup` [\#597](https://github.com/auth0/Auth0.swift/pull/597) ([Widcket](https://github.com/Widcket))
- Have `clearSession()` yield a `Result` [\#584](https://github.com/auth0/Auth0.swift/pull/584) ([Widcket](https://github.com/Widcket))
- Have the `revoke()` method yield a `Result` [\#582](https://github.com/auth0/Auth0.swift/pull/582) ([Widcket](https://github.com/Widcket))
- Lowercase the `PasswordlessType` enum cases [\#580](https://github.com/auth0/Auth0.swift/pull/580) ([Widcket](https://github.com/Widcket))
- Do not check for Refresh Token presence in `hasValid(minTTL:)` [\#574](https://github.com/auth0/Auth0.swift/pull/574) ([Widcket](https://github.com/Widcket))
- Remove parameterless `tokenExchange()` method [\#573](https://github.com/auth0/Auth0.swift/pull/573) ([Widcket](https://github.com/Widcket))
- Make AuthTransaction internal [\#570](https://github.com/auth0/Auth0.swift/pull/570) ([Widcket](https://github.com/Widcket))
- Remove Web Auth method embedded in Authentication API client [\#560](https://github.com/auth0/Auth0.swift/pull/560) ([Widcket](https://github.com/Widcket))
- Use strictly-typed result and error types [SDK-2977] [\#558](https://github.com/auth0/Auth0.swift/pull/558) ([Widcket](https://github.com/Widcket))
- Migrate all errors to structs [SDK-2968] [\#552](https://github.com/auth0/Auth0.swift/pull/552) ([Widcket](https://github.com/Widcket))
- Decouple Credentials Manager storage from SimpleKeychain [SDK-2936] [\#551](https://github.com/auth0/Auth0.swift/pull/551) ([adamjmcgrath](https://github.com/adamjmcgrath))
- Replace `JSONObjectPayload` with `Codable` on `Credentials` [SDK-2958] [\#549](https://github.com/auth0/Auth0.swift/pull/549) ([Widcket](https://github.com/Widcket))
- Make credentials renewal thread-safe [SDK-2903] [\#548](https://github.com/auth0/Auth0.swift/pull/548) ([Widcket](https://github.com/Widcket))
- Remove deprecated metods [\#543](https://github.com/auth0/Auth0.swift/pull/543) ([Widcket](https://github.com/Widcket))
- Remove custom `Result` type [SDK-2901] [\#542](https://github.com/auth0/Auth0.swift/pull/542) ([Widcket](https://github.com/Widcket))
- Use `openid profile email` as the default scope value [SDK-2926] [\#540](https://github.com/auth0/Auth0.swift/pull/540) ([Widcket](https://github.com/Widcket))
- Drop support for Objective-C [SDK-2894] [\#539](https://github.com/auth0/Auth0.swift/pull/539) ([Widcket](https://github.com/Widcket))
- Use only `code` response type and drop implicit grant [SDK-2899] [\#538](https://github.com/auth0/Auth0.swift/pull/538) ([Widcket](https://github.com/Widcket))
- Remove the `channel` parameter from MFA challenge method [SDK-2904] [\#536](https://github.com/auth0/Auth0.swift/pull/536) ([Widcket](https://github.com/Widcket))
- Enforce `openid` scope on Web Auth [SDK-2924] [\#535](https://github.com/auth0/Auth0.swift/pull/535) ([Widcket](https://github.com/Widcket))
- Make some `Credentials` properties non-optional [SDK-2900] [\#533](https://github.com/auth0/Auth0.swift/pull/533) ([Widcket](https://github.com/Widcket))
- Drop support for HS256 [\#532](https://github.com/auth0/Auth0.swift/pull/532) ([Widcket](https://github.com/Widcket))
- Drop older Swift versions [\#531](https://github.com/auth0/Auth0.swift/pull/531) ([Widcket](https://github.com/Widcket))
- Remove `parameters` from Authentication API client methods [SDK-2902] [\#530](https://github.com/auth0/Auth0.swift/pull/530) ([Widcket](https://github.com/Widcket))
- Drop platform versions [SDK-2895] [\#527](https://github.com/auth0/Auth0.swift/pull/527) ([Widcket](https://github.com/Widcket))

**Added**

- Add wrappers with default values for MFA methods [\#583](https://github.com/auth0/Auth0.swift/pull/583) ([Widcket](https://github.com/Widcket))
- Add support for async/await [\#572](https://github.com/auth0/Auth0.swift/pull/572) ([Widcket](https://github.com/Widcket))
- Add custom description to `Credentials` [\#571](https://github.com/auth0/Auth0.swift/pull/571) ([Widcket](https://github.com/Widcket))
- Add support for Combine [SDK-2907] [\#566](https://github.com/auth0/Auth0.swift/pull/566) ([Widcket](https://github.com/Widcket))
- Add a way to pass custom headers directly to the request [SDK-2908] [\#562](https://github.com/auth0/Auth0.swift/pull/562) ([adamjmcgrath](https://github.com/adamjmcgrath))
- Add support for subpaths in Auth0 domain [SDK-2963] [\#557](https://github.com/auth0/Auth0.swift/pull/557) ([Widcket](https://github.com/Widcket))
- Add support for custom URL sessions to Web Auth [\#556](https://github.com/auth0/Auth0.swift/pull/556) ([Widcket](https://github.com/Widcket))

**Changed**

- Use `Auth0Error` for ID Token validation errors [\#569](https://github.com/auth0/Auth0.swift/pull/569) ([Widcket](https://github.com/Widcket))
- Migrate existing Objective-C code to Swift [SDK-2905] [\#547](https://github.com/auth0/Auth0.swift/pull/547) ([adamjmcgrath](https://github.com/adamjmcgrath))

**Fixed**

- Fix version number reported by telemetry when using SPM [\#633](https://github.com/auth0/Auth0.swift/pull/633) ([Widcket](https://github.com/Widcket))
- Fix auth time validation [\#626](https://github.com/auth0/Auth0.swift/pull/626) ([Widcket](https://github.com/Widcket))

## [1.39.0](https://github.com/auth0/Auth0.swift/tree/1.39.0) (2022-03-07)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.38.1...1.39.0)

**Added**
- [SDK-3145] Add `Auth0Client` parameter to logout and add `view` to `telemetry.env` for iOS [\#659](https://github.com/auth0/Auth0.swift/pull/659) ([adamjmcgrath](https://github.com/adamjmcgrath))

## [1.38.1](https://github.com/auth0/Auth0.swift/tree/1.38.1) (2022-02-02)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.38.0...1.38.1)

**Fixed**
- Fix `auth_time` validation [\#652](https://github.com/auth0/Auth0.swift/pull/652) ([Widcket](https://github.com/Widcket))
- Fix version number reported by telemetry when using SPM [\#651](https://github.com/auth0/Auth0.swift/pull/651) ([Widcket](https://github.com/Widcket))

## [1.38.0](https://github.com/auth0/Auth0.swift/tree/1.38.0) (2021-10-29)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.37.1...1.38.0)

**Deprecated**
- Deprecate the `responseType` Web Auth method [\#525](https://github.com/auth0/Auth0.swift/pull/525) ([Widcket](https://github.com/Widcket))

## [1.37.1](https://github.com/auth0/Auth0.swift/tree/1.37.1) (2021-10-15)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.37.0...1.37.1)

**Fixed**
- Add `Carthage/Build` to the frameworks search path [\#521](https://github.com/auth0/Auth0.swift/pull/521) ([Widcket](https://github.com/Widcket))
- Add `.macCatalyst` to Package.swift [\#518](https://github.com/auth0/Auth0.swift/pull/518) ([Widcket](https://github.com/Widcket))

## [1.37.0](https://github.com/auth0/Auth0.swift/tree/1.37.0) (2021-10-12)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.36.0...1.37.0)

**Changed**
- Updated dependencies [\#505](https://github.com/auth0/Auth0.swift/pull/505) ([Widcket](https://github.com/Widcket))

**Deprecated**
- Deprecate `resumeAuth` and `useLegacyAuthentication` [\#514](https://github.com/auth0/Auth0.swift/pull/514) ([Widcket](https://github.com/Widcket))

## [1.36.0](https://github.com/auth0/Auth0.swift/tree/1.36.0) (2021-09-01)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.35.0...1.36.0)

**Added**
- Add parameter option to `Request` [\#494](https://github.com/auth0/Auth0.swift/pull/494) ([konDeichmann](https://github.com/konDeichmann))

**Deprecated**
- Deprecate methods [SDK-2749] [\#499](https://github.com/auth0/Auth0.swift/pull/499) ([Widcket](https://github.com/Widcket))

## [1.35.0](https://github.com/auth0/Auth0.swift/tree/1.35.0) (2021-07-19)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.34.0...1.35.0)

**Added**
- Expose recovery code [SDK-2661] [\#487](https://github.com/auth0/Auth0.swift/pull/487) ([Widcket](https://github.com/Widcket))
- [FR-485] Add support for custom LAPolicy when evaluating biometry aut… [\#486](https://github.com/auth0/Auth0.swift/pull/486) ([krodak](https://github.com/krodak))

## [1.34.0](https://github.com/auth0/Auth0.swift/tree/1.34.0) (2021-07-05)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.33.1...1.34.0)

**Added**
- Add `user` property to CredentialsManager [SDK-2633] [\#482](https://github.com/auth0/Auth0.swift/pull/482) ([Widcket](https://github.com/Widcket))

## [1.33.1](https://github.com/auth0/Auth0.swift/tree/1.33.1) (2021-06-07)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.33.0...1.33.1)

**Changed**
- Make test dependencies not resolve when installing with SPM [SDK-2600] [\#476](https://github.com/auth0/Auth0.swift/pull/476) ([Widcket](https://github.com/Widcket))

## [1.33.0](https://github.com/auth0/Auth0.swift/tree/1.33.0) (2021-04-23)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.32.0...1.33.0)

**Changed**
- Use Swift's built-in Result type when available [\#467](https://github.com/auth0/Auth0.swift/pull/467) ([ejensen](https://github.com/ejensen))

## [1.32.0](https://github.com/auth0/Auth0.swift/tree/1.32.0) (2021-03-18)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.31.1...1.32.0)

**Added**
- Added support for organizations [SDK-2397] [\#463](https://github.com/auth0/Auth0.swift/pull/463) ([Widcket](https://github.com/Widcket))

## [1.31.1](https://github.com/auth0/Auth0.swift/tree/1.31.1) (2021-03-09)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.31.0...1.31.1)

**Fixed**
- Skipped kid validation when alg is HS256 [SDK-2328] [\#455](https://github.com/auth0/Auth0.swift/pull/455) ([Widcket](https://github.com/Widcket))

## [1.31.0](https://github.com/auth0/Auth0.swift/tree/1.31.0) (2021-02-12)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.30.1...1.31.0)

**Added**
- Added support for OOB and Recovery code MFA challenges [\#442](https://github.com/auth0/Auth0.swift/pull/442) ([ejensen](https://github.com/ejensen))
- Added support for a wider variety of primitive types for the Credentials expiration date [\#440](https://github.com/auth0/Auth0.swift/pull/440) ([seanmcneil](https://github.com/seanmcneil))

**Fixed**
- Always add a max_age if one was provided [\#452](https://github.com/auth0/Auth0.swift/pull/452) ([Widcket](https://github.com/Widcket))

## [1.30.1](https://github.com/auth0/Auth0.swift/tree/1.30.1) (2020-11-11)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.30.0...1.30.1)

**Fixed**
- Fixed passwordless error detection [\#430](https://github.com/auth0/Auth0.swift/pull/430) ([Widcket](https://github.com/Widcket))

## [1.30.0](https://github.com/auth0/Auth0.swift/tree/1.30.0) (2020-10-23)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.29.0...1.30.0)

**Added**
- Added clearSession to the Objective-C WebAuth wrapper [\#426](https://github.com/auth0/Auth0.swift/pull/426) ([Widcket](https://github.com/Widcket))
- Added Swift Package Manager support [SDK-2014] [\#425](https://github.com/auth0/Auth0.swift/pull/425) ([Widcket](https://github.com/Widcket))

## [1.29.0](https://github.com/auth0/Auth0.swift/tree/1.29.0) (2020-10-08)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.28.0...1.29.0)

**Changed**
- Updated Quick and Nimble [\#421](https://github.com/auth0/Auth0.swift/pull/421) ([Widcket](https://github.com/Widcket))

**Fixed**
- Bugfix for minTTL on CredentialsManager.swift [\#420](https://github.com/auth0/Auth0.swift/pull/420) ([heyzooi](https://github.com/heyzooi))

## [1.28.0](https://github.com/auth0/Auth0.swift/tree/1.28.0) (2020-08-21)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.27.0...1.28.0)

**Added**
- Added support for custom issuer for ID Token validation [SDK-1909] [\#411](https://github.com/auth0/Auth0.swift/pull/411) ([Widcket](https://github.com/Widcket))
- Added CredentialsManager to watchOS target [SDK-1906] [\#409](https://github.com/auth0/Auth0.swift/pull/409) ([Widcket](https://github.com/Widcket))
- Added isVerificationRequired error [SDK-1865] [\#408](https://github.com/auth0/Auth0.swift/pull/408) ([Widcket](https://github.com/Widcket))

## [1.27.0](https://github.com/auth0/Auth0.swift/tree/1.27.0) (2020-07-27)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.26.0...1.27.0)

**Added**
- Added TTL renewal of credentials in CredentialsManager [SDK-1818] [\#399](https://github.com/auth0/Auth0.swift/pull/399) ([Widcket](https://github.com/Widcket))

## [1.26.0](https://github.com/auth0/Auth0.swift/tree/1.26.0) (2020-06-10)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.25.0...1.26.0)

**Added**
- Added Sign In with Apple profile parameter [\#392](https://github.com/auth0/Auth0.swift/pull/392) ([ejensen](https://github.com/ejensen))

**Changed**
- Moved NativeAuth.start() into the NativeAuth protocol declaration [\#390](https://github.com/auth0/Auth0.swift/pull/390) ([ejensen](https://github.com/ejensen))

## [1.25.0](https://github.com/auth0/Auth0.swift/tree/1.25.0) (2020-05-18)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.24.1...1.25.0)

**Added**
- Added support for ephemeral sessions [SDK-1559] [\#388](https://github.com/auth0/Auth0.swift/pull/388) ([Widcket](https://github.com/Widcket))
- Bumped dependencies [SDK-1630] [\#386](https://github.com/auth0/Auth0.swift/pull/386) ([Widcket](https://github.com/Widcket))

## [1.24.1](https://github.com/auth0/Auth0.swift/tree/1.24.1) (2020-04-30)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.24.0...1.24.1)

**Fixed**
- Added compilation conditions to Podspec [\#384](https://github.com/auth0/Auth0.swift/pull/384) ([Widcket](https://github.com/Widcket))

## [1.24.0](https://github.com/auth0/Auth0.swift/tree/1.24.0) (2020-04-29)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.23.0...1.24.0)

**Added**
- Added WebAuth support to macOS [SDK-1545] [\#381](https://github.com/auth0/Auth0.swift/pull/381) ([Widcket](https://github.com/Widcket))

## [1.23.0](https://github.com/auth0/Auth0.swift/tree/1.23.0) (2020-03-30)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.22.1...1.23.0)

**Added**
- Added support for Refresh Token Rotation [SDK-1420] [\#369](https://github.com/auth0/Auth0.swift/pull/369) ([Widcket](https://github.com/Widcket))
- Added support for iOS extensions [\#365](https://github.com/auth0/Auth0.swift/pull/365) ([Widcket](https://github.com/Widcket))
- Added Facebook token exchange method [SDK-1401] [\#358](https://github.com/auth0/Auth0.swift/pull/358) ([Widcket](https://github.com/Widcket))

**Deprecated**
- Renamed native social login methods [\#370](https://github.com/auth0/Auth0.swift/pull/370) ([Widcket](https://github.com/Widcket))

**Fixed**
- Updated Facebook subject_token_type [\#361](https://github.com/auth0/Auth0.swift/pull/361) ([Widcket](https://github.com/Widcket))

**Security**
- [Snyk] Fix for 3 vulnerabilities [\#360](https://github.com/auth0/Auth0.swift/pull/360) ([crew-security](https://github.com/crew-security))

## [1.22.1](https://github.com/auth0/Auth0.swift/tree/1.22.1) (2020-02-28)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.22.0...1.22.1)

**Fixed**
- Fixed build failure with SimpleKeychain 0.11.0 [\#354](https://github.com/auth0/Auth0.swift/pull/354) ([jshier](https://github.com/jshier))

## [1.22.0](https://github.com/auth0/Auth0.swift/tree/1.22.0) (2020-02-19)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.21.0...1.22.0)

**Added**
- Added redirect URL method to WebAuth builder [SDK-1299] [\#351](https://github.com/auth0/Auth0.swift/pull/351) ([Widcket](https://github.com/Widcket))

**Changed**
- Refactored SIWA token exchange method [SDK-1349] [\#350](https://github.com/auth0/Auth0.swift/pull/350) ([Widcket](https://github.com/Widcket))

## [1.21.0](https://github.com/auth0/Auth0.swift/tree/1.21.0) (2020-02-04)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.20.0...1.21.0)

**Added**
- Added a Table of Contents to the README [\#338](https://github.com/auth0/Auth0.swift/pull/338) ([Widcket](https://github.com/Widcket))
- Exposed additional Swift calls to Objective-C [\#342](https://github.com/auth0/Auth0.swift/pull/342) ([npalethorpe](https://github.com/npalethorpe))
- Improved OIDC compliance [SDK-976] [\#346](https://github.com/auth0/Auth0.swift/pull/346) ([Widcket](https://github.com/Widcket))

**Fixed**
- Added missing watchOS shared scheme [\#336](https://github.com/auth0/Auth0.swift/pull/336) ([Widcket](https://github.com/Widcket))

## [1.20.0](https://github.com/auth0/Auth0.swift/tree/1.20.0) (2020-01-03)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.19.3...1.20.0)

**Added**
- Implemented passwordless login [SDK-1185] [\#330](https://github.com/auth0/Auth0.swift/pull/330) ([Widcket](https://github.com/Widcket))

## [1.19.3](https://github.com/auth0/Auth0.swift/tree/1.19.3) (2019-11-27)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.19.2...1.19.3)

**Fixed**
- Fix Credentials Manager Test [\#325](https://github.com/auth0/Auth0.swift/pull/325) ([cocojoe](https://github.com/cocojoe))

## [1.19.2](https://github.com/auth0/Auth0.swift/tree/1.19.2) (2019-11-14)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.19.1...1.19.2)

**Added**
- Add support for extended profile using SIWA token exchange [\#322](https://github.com/auth0/Auth0.swift/pull/322) ([asmclean](https://github.com/asmclean))

## [1.19.1](https://github.com/auth0/Auth0.swift/tree/1.19.1) (2019-10-31)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.19.0...1.19.1)

**Added**
- Renew tokens in Credentials Manager if either token has expired [SDK-999] [\#319](https://github.com/auth0/Auth0.swift/pull/319) ([cocojoe](https://github.com/cocojoe))

**Fixed**
- Fix non-main thread use during inspection in SafariViewController [SDK-1119] [\#318](https://github.com/auth0/Auth0.swift/pull/318) ([cocojoe](https://github.com/cocojoe))

## [1.19.0](https://github.com/auth0/Auth0.swift/tree/1.19.0) (2019-10-15)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.18.0...1.19.0)

**Added**
- CredentialsManager function to clear and revoke the refresh token [\#312](https://github.com/auth0/Auth0.swift/pull/312) ([stevehobbsdev](https://github.com/stevehobbsdev))

## [1.18.0](https://github.com/auth0/Auth0.swift/tree/1.18.0) (2019-09-20)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.17.1...1.18.0)

**Added**
- Default DismissButtonStyle when using SFSafariViewController iOS 11+ [\#305](https://github.com/auth0/Auth0.swift/pull/305) ([andrewfoghel](https://github.com/andrewfoghel))
- Added SIWA token exchange support [\#304](https://github.com/auth0/Auth0.swift/pull/304) ([cocojoe](https://github.com/cocojoe))

## [1.17.1](https://github.com/auth0/Auth0.swift/tree/1.17.1) (2019-09-04)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.17.0...1.17.1)

**Fixed**
- Fixed ability to clear WebAuth session in iOS 13 [\#301](https://github.com/auth0/Auth0.swift/pull/301) ([matt](https://github.com/matt))

## [1.17.0](https://github.com/auth0/Auth0.swift/tree/1.17.0) (2019-08-27)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.16.1...1.17.0)

**Added**
- Added support for iOS13 changes in ASWebAuthenticationSession [\#297](https://github.com/auth0/Auth0.swift/pull/297) ([cocojoe](https://github.com/cocojoe))
- Added authentication method for default directory login [\#296](https://github.com/auth0/Auth0.swift/pull/296) ([cocojoe](https://github.com/cocojoe))

**Notes**
Behaviour changes in iOS 13 relating to Web Authentication require that in Xcode 11 this library **must** be compiled using Swift 5.x. This should be the default setting unless it has been manually changed.

## [1.16.1](https://github.com/auth0/Auth0.swift/tree/1.16.1) (2019-07-29)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.16.0...1.16.1)

**Fixed**
- Fixed ObjMembers attribute added for ObjC access [\#289](https://github.com/auth0/Auth0.swift/pull/289) ([cocojoe](https://github.com/cocojoe))

## [1.16.0](https://github.com/auth0/Auth0.swift/tree/1.16.0) (2019-07-17)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.15.0...1.16.0)

**Added**
- Added support for root attributes when creating a new user [\#287](https://github.com/auth0/Auth0.swift/pull/287) ([cocojoe](https://github.com/cocojoe))

**Fixed**
- Fix: Remove force unwrap in AuthSession handler [\#286](https://github.com/auth0/Auth0.swift/pull/286) ([cocojoe](https://github.com/cocojoe))
- Fix Dismiss AS/SF authentication sessions upon deep-link callback [\#281](https://github.com/auth0/Auth0.swift/pull/281) ([cysp](https://github.com/cysp))
- Update app configuration error message for PKCE [\#280](https://github.com/auth0/Auth0.swift/pull/280) ([lbalmaceda](https://github.com/lbalmaceda))

## [1.15.0](https://github.com/auth0/Auth0.swift/tree/1.15.0) (2019-04-24)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.14.2...1.15.0)

**Added**
- Added Swift 5 / Xcode 10.2 Support [\#272](https://github.com/auth0/Auth0.swift/pull/272) ([cocojoe](https://github.com/cocojoe))

## [1.14.2](https://github.com/auth0/Auth0.swift/tree/1.14.2) (2019-03-18)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.14.1...1.14.2)

**Changed**
- Ensure URL encoding of + as %2B Authorize URL [SDK-691] [\#259](https://github.com/auth0/Auth0.swift/pull/259) ([cocojoe](https://github.com/cocojoe))
- Updated Auth0 Telemetry Format [\#256](https://github.com/auth0/Auth0.swift/pull/256) ([cocojoe](https://github.com/cocojoe))

## [1.14.1](https://github.com/auth0/Auth0.swift/tree/1.14.1) (2019-01-11)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.14.0...1.14.1)

**Fixed**
- Add Fix for Brew in Swift 3.0 CI [\#254](https://github.com/auth0/Auth0.swift/pull/254) ([cocojoe](https://github.com/cocojoe))
- Pods Fix - Move AuthenticationServices to weak_framework section [\#253](https://github.com/auth0/Auth0.swift/pull/253) ([ivabra](https://github.com/ivabra))

## [1.14.0](https://github.com/auth0/Auth0.swift/tree/1.14.0) (2018-12-06)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.13.0...1.14.0)

**Added**
- Added ASWebAuthenticationSession Support iOS12 [\#245](https://github.com/auth0/Auth0.swift/pull/245) ([cocojoe](https://github.com/cocojoe))
- Add Multiple Platform CI [\#242](https://github.com/auth0/Auth0.swift/pull/242) ([cocojoe](https://github.com/cocojoe))

**Fixed**
- Ensure correct thread execution in test app [\#227](https://github.com/auth0/Auth0.swift/pull/227) ([cocojoe](https://github.com/cocojoe))

## [1.13.0](https://github.com/auth0/Auth0.swift/tree/1.13.0) (2018-09-17)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.12.0...1.13.0)

**Fixed**
- Fixed Xcode 10 Support [\#221](https://github.com/auth0/Auth0.swift/pull/221) ([cocojoe](https://github.com/cocojoe))

## [1.12.0](https://github.com/auth0/Auth0.swift/tree/1.12.0) (2018-07-26)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.11.1...1.12.0)

**Added**
- Added support for custom Keychain key in Credentials Manager [\#208](https://github.com/auth0/Auth0.swift/pull/208) ([danielphillips](https://github.com/danielphillips))
- Enable Credentials Manager for tvOS and Mac Platforms [\#206](https://github.com/auth0/Auth0.swift/pull/206) ([cocojoe](https://github.com/cocojoe))

**Fixed**
- Fix Swift 4.1 Warning [\#207](https://github.com/auth0/Auth0.swift/pull/207) ([cocojoe](https://github.com/cocojoe))

## [1.11.1](https://github.com/auth0/Auth0.swift/tree/1.11.1) (2018-06-08)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.11.0...1.11.1)

**Added**
- Added optional paramaters to login API [\#199](https://github.com/auth0/Auth0.swift/pull/199) ([akiroz](https://github.com/akiroz))

## [1.11.0](https://github.com/auth0/Auth0.swift/tree/1.11.0) (2018-05-11)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.10.1...1.11.0)

**Added**
- Added CI 2.0 [\#196](https://github.com/auth0/Auth0.swift/pull/196) ([cocojoe](https://github.com/cocojoe))
- Added OIDC MFA EndPoint [\#189](https://github.com/auth0/Auth0.swift/pull/189) ([cocojoe](https://github.com/cocojoe))

**Changed**
- Updates Xcode 9.3 settings, dependencies [\#195](https://github.com/auth0/Auth0.swift/pull/195) ([cocojoe](https://github.com/cocojoe))

## [1.10.1](https://github.com/auth0/Auth0.swift/tree/1.10.1) (2018-03-08)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.10.0...1.10.1)

**Fixed**
- Fixed client ID and redirect URL query items not being passed in nonfederated clearSession() [\#188](https://github.com/auth0/Auth0.swift/pull/188) ([Rypac](https://github.com/Rypac))

## [1.10.0](https://github.com/auth0/Auth0.swift/tree/1.10.0) (2018-01-05)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.9.2...1.10.0)

**Changed**
- Updated Credentials Manager [\#180](https://github.com/auth0/Auth0.swift/pull/180) ([cocojoe](https://github.com/cocojoe))

## [1.9.2](https://github.com/auth0/Auth0.swift/tree/1.9.2) (2017-11-17)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.9.1...1.9.2)

**Fixed**
- Fixed Federated param in logoutURL iOS 11+ [\#171](https://github.com/auth0/Auth0.swift/pull/171) ([cocojoe](https://github.com/cocojoe))

## [1.9.1](https://github.com/auth0/Auth0.swift/tree/1.9.1) (2017-10-20)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.9.0...1.9.1)

**Fixed**
- Fixed callback error in Swift 4.0 [\#167](https://github.com/auth0/Auth0.swift/pull/167) ([cocojoe](https://github.com/cocojoe))

## [1.9.0](https://github.com/auth0/Auth0.swift/tree/1.9.0) (2017-10-19)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.8.0...1.9.0)

**Added**
- Added SFAuthenticationSession support in iOS 11 [\#154](https://github.com/auth0/Auth0.swift/pull/154) ([cocojoe](https://github.com/cocojoe))

## [1.8.0](https://github.com/auth0/Auth0.swift/tree/1.8.0) (2017-09-15)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.7.2...1.8.0)

**Changed**
- Updated Xcode 9 / Swift 3.2, Clean up for Swift 4 migration. [\#149](https://github.com/auth0/Auth0.swift/pull/149) ([cocojoe](https://github.com/cocojoe))

**Fixed**
- Disabled Code coverage Xcode 9 [\#151](https://github.com/auth0/Auth0.swift/pull/151) ([cocojoe](https://github.com/cocojoe))

## [1.7.2](https://github.com/auth0/Auth0.swift/tree/1.7.2) (2017-09-11)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.7.1...1.7.2)

**Added**
- Added invalid_credentials check for /oauth/token [\#147](https://github.com/auth0/Auth0.swift/pull/147) ([cocojoe](https://github.com/cocojoe))

**Fixed**
- Fixed - Ensure existing refreshToken returned in Credentials Manager [\#146](https://github.com/auth0/Auth0.swift/pull/146) ([cocojoe](https://github.com/cocojoe))

## [1.7.1](https://github.com/auth0/Auth0.swift/tree/1.7.1) (2017-07-11)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.7.0...1.7.1)

**Added**
- Added credential manager methods `clear` and `hasValid` [\#133](https://github.com/auth0/Auth0.swift/pull/133) ([cocojoe](https://github.com/cocojoe))

## [1.7.0](https://github.com/auth0/Auth0.swift/tree/1.7.0) (2017-06-26)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.6.0...1.7.0)

**Added**
- Added OIDC Conformant UserInfo class and API Method [\#122](https://github.com/auth0/Auth0.swift/pull/122) ([cocojoe](https://github.com/cocojoe))
- Added scope property to Credentials [\#120](https://github.com/auth0/Auth0.swift/pull/120) ([cocojoe](https://github.com/cocojoe))
- Added Touch ID Utility [\#116](https://github.com/auth0/Auth0.swift/pull/116) ([cocojoe](https://github.com/cocojoe))

**Changed**
- Use new SFSafariViewController init for iOS11 [\#125](https://github.com/auth0/Auth0.swift/pull/125) ([cocojoe](https://github.com/cocojoe))
- Refactor deprecated Matcher protocol with Predicate protocol [\#117](https://github.com/auth0/Auth0.swift/pull/117) ([cocojoe](https://github.com/cocojoe))

**Deprecated**
- Document Legacy Grant Types & Method deprecations [\#126](https://github.com/auth0/Auth0.swift/pull/126) ([cocojoe](https://github.com/cocojoe))

## [1.6.0](https://github.com/auth0/Auth0.swift/tree/1.6.0) (2017-06-06)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.5.0...1.6.0)

**Added**
- Added WebAuth Auth0 Session Clear [\#115](https://github.com/auth0/Auth0.swift/pull/115) ([cocojoe](https://github.com/cocojoe))
- Credentials support NSSecureCoding, CredentialsManager Utility, KeyChain Storage [\#113](https://github.com/auth0/Auth0.swift/pull/113) ([cocojoe](https://github.com/cocojoe))
- Added method to revoke refresh tokens [\#111](https://github.com/auth0/Auth0.swift/pull/111) ([cocojoe](https://github.com/cocojoe))

**Changed**
- Xcode 8.3 Compatibility [\#108](https://github.com/auth0/Auth0.swift/pull/108) ([cocojoe](https://github.com/cocojoe))
- Use built-in Carthage Cache system [\#107](https://github.com/auth0/Auth0.swift/pull/107) ([hzalaz](https://github.com/hzalaz))
- Update Dependencies [\#105](https://github.com/auth0/Auth0.swift/pull/105) ([cocojoe](https://github.com/cocojoe))

**Fixed**
- Restrict webAuth tests to iOS [\#109](https://github.com/auth0/Auth0.swift/pull/109) ([cocojoe](https://github.com/cocojoe))

## [1.5.0](https://github.com/auth0/Auth0.swift/tree/1.5.0) (2017-03-27)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.4.0...1.5.0)

**Added**
- Method to check native auth availability for provider in the device [\#104](https://github.com/auth0/Auth0.swift/pull/104) ([cocojoe](https://github.com/cocojoe))

## [1.4.0](https://github.com/auth0/Auth0.swift/tree/1.4.0) (2017-03-16)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.3.0...1.4.0)

**Added**
- Added scope to refresh token [\#102](https://github.com/auth0/Auth0.swift/pull/102) ([hzalaz](https://github.com/hzalaz))

## [1.3.0](https://github.com/auth0/Auth0.swift/tree/1.3.0) (2017-03-13)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.2.0...1.3.0)

**Added**
- Authentication can now create WebAuth instances for given connection [\#98](https://github.com/auth0/Auth0.swift/pull/98) ([cocojoe](https://github.com/cocojoe))
- Added connection scopes to web auth [\#96](https://github.com/auth0/Auth0.swift/pull/96) ([hzalaz](https://github.com/hzalaz))

**Changed**
- Restrict webauth only to iOS [\#101](https://github.com/auth0/Auth0.swift/pull/101) ([hzalaz](https://github.com/hzalaz))

**Fixed**
- Avoid WebAuth to retain UIApplication root ViewController [\#95](https://github.com/auth0/Auth0.swift/pull/95) ([cocojoe](https://github.com/cocojoe))

## [1.2.0](https://github.com/auth0/Auth0.swift/tree/1.2.0) (2017-02-06)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.1.1...1.2.0)


**Added**
- Native Authentication support [\#86](https://github.com/auth0/Auth0.swift/pull/86) ([cocojoe](https://github.com/cocojoe))
- Added SwiftLint to project [\#84](https://github.com/auth0/Auth0.swift/pull/84) ([cocojoe](https://github.com/cocojoe))
- Profile timestamp to expect epoch, fallback to ISO8601 [\#83](https://github.com/auth0/Auth0.swift/pull/83) ([cocojoe](https://github.com/cocojoe))

**Fixed**
- Support OIDC /userInfo in Profile [\#89](https://github.com/auth0/Auth0.swift/pull/89) ([cocojoe](https://github.com/cocojoe))

## [1.1.1](https://github.com/auth0/Auth0.swift/tree/1.1.1) (2017-01-02)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.1.0...1.1.1)


**Fixed**
- Ensure state set correctly when set via parameters [\#77](https://github.com/auth0/Auth0.swift/pull/77) ([cocojoe](https://github.com/cocojoe))

## [1.1.0](https://github.com/auth0/Auth0.swift/tree/1.1.0) (2016-12-16)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.1...1.1.0)

**Closed issues**
- Missing API [\#59](https://github.com/auth0/Auth0.swift/issues/59)
- Delegation for Firebase [\#55](https://github.com/auth0/Auth0.swift/issues/55)

**Added**
- Credentials exposes expires_in if returned after auth [\#72](https://github.com/auth0/Auth0.swift/pull/72) ([cocojoe](https://github.com/cocojoe))
- Added grant type password realm support [\#71](https://github.com/auth0/Auth0.swift/pull/71) ([cocojoe](https://github.com/cocojoe))
- Support refresh token authentication [\#69](https://github.com/auth0/Auth0.swift/pull/69) ([cocojoe](https://github.com/cocojoe))
- Support for audience parameter for WebAuth [\#67](https://github.com/auth0/Auth0.swift/pull/67) ([cocojoe](https://github.com/cocojoe))
- Multiple respone_type support [\#65](https://github.com/auth0/Auth0.swift/pull/65) ([cocojoe](https://github.com/cocojoe))
- Support id_token response type [\#62](https://github.com/auth0/Auth0.swift/pull/62) ([cocojoe](https://github.com/cocojoe))

**Changed**
- Expose credentials init [\#73](https://github.com/auth0/Auth0.swift/pull/73) ([cocojoe](https://github.com/cocojoe))

**Deprecated**
- Deprecate tokeninfo [\#70](https://github.com/auth0/Auth0.swift/pull/70) ([cocojoe](https://github.com/cocojoe))

## [1.0.1](https://github.com/auth0/Auth0.swift/tree/1.0.1) (2016-11-23)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0...1.0.1)

**Fixed**
- Expose authentication wrapper [\#60](https://github.com/auth0/Auth0.swift/pull/60) ([cocojoe](https://github.com/cocojoe))

## [1.0.0](https://github.com/auth0/Auth0.swift/tree/1.0.0) (2016-10-06)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-rc.4...1.0.0)

**Closed issues**
- Facebook Login web page does not redirect to the application at the first login [\#51](https://github.com/auth0/Auth0.swift/issues/51)

**Fixed**
- Properly parse authorize response [\#56](https://github.com/auth0/Auth0.swift/pull/56) ([hzalaz](https://github.com/hzalaz))

## [1.0.0-rc.4](https://github.com/auth0/Auth0.swift/tree/1.0.0-rc.4) (2016-09-18)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-rc.3...1.0.0-rc.4)

This version (and future ones) requires Xcode 8 and Swift 3. For Swift 2.3 please check the branch [v1@swift-2.3](https://github.com/auth0/Auth0.swift/tree/v1@swift-2.3)

**Closed issues:**
- Auth0 Swift 3 support [\#45](https://github.com/auth0/Auth0.swift/issues/45) ([aqeelb](https://github.com/aqeelb))

**Changed:**
- Swift 3 [\#49](https://github.com/auth0/Auth0.swift/pull/49) ([hzalaz](https://github.com/hzalaz))
- Use protocols [\#47](https://github.com/auth0/Auth0.swift/pull/47) ([hzalaz](https://github.com/hzalaz))

## [1.0.0-rc.3](https://github.com/auth0/Auth0.swift/tree/1.0.0-rc.3) (2016-09-14)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-rc.2...1.0.0-rc.3)

**Closed issues:**

- Xcode 8 Support? [\#44](https://github.com/auth0/Auth0.swift/issues/44) ([gbejarano01](https://github.com/gbejarano01))

**Changed:**

- Update for Swift 2.3 & Xcode 8 [\#46](https://github.com/auth0/Auth0.swift/pull/46) ([hzalaz](https://github.com/hzalaz))

## [1.0.0-rc.2](https://github.com/auth0/Auth0.swift/tree/1.0.0-rc.2) (2016-09-09)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-rc.1...1.0.0-rc.2)

**Changed:**

- Rework Logging [\#43](https://github.com/auth0/Auth0.swift/pull/43) ([hzalaz](https://github.com/hzalaz))

**Breaking changes:**

The function `enableLogging()` was removed, so now to enable logging in the library you should enable it per-client instead of globally.

For Auth API
```swift
var auth = Auth0.authentication()
auth.logging(enabled: true)
```

For Users API
```swift
var users = Auth0.users(token: "token")
users.logging(enabled: true)
```

Also now you can provide a custom Logger to replace the default one (which just uses Swift `print`). It only needs to implement the protocol `Logger`

```swift
let logger = MyCustomLogger()
var auth = Auth0.authentication()
auth.usingLogger(logger)
```

## [1.0.0-rc.1](https://github.com/auth0/Auth0.swift/tree/1.0.0-rc.1) (2016-08-17)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-beta.7...1.0.0-rc.1)

**Added:**

- Handle too many attempts error [\#42](https://github.com/auth0/Auth0.swift/pull/42) ([hzalaz](https://github.com/hzalaz))
- Add WebAuth protocol [\#41](https://github.com/auth0/Auth0.swift/pull/41) ([hzalaz](https://github.com/hzalaz))

## [1.0.0-beta.7](https://github.com/auth0/Auth0.swift/tree/1.0.0-beta.7) (2016-07-29)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-beta.6...1.0.0-beta.7)

**Added:**

- Add tvOS & watchOS targets [\#40](https://github.com/auth0/Auth0.swift/pull/40) ([hzalaz](https://github.com/hzalaz))

**Changed:**

- Improve error handling and Auth session management [\#39](https://github.com/auth0/Auth0.swift/pull/39) ([hzalaz](https://github.com/hzalaz))
- Avoid using global telemetry. [\#38](https://github.com/auth0/Auth0.swift/pull/38) ([hzalaz](https://github.com/hzalaz))

## [1.0.0-beta.6](https://github.com/auth0/Auth0.swift/tree/1.0.0-beta.6) (2016-07-26)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-beta.5...1.0.0-beta.6)

**Added:**

- Unlink method in ObjC bridge [\#36](https://github.com/auth0/Auth0.swift/pull/36) ([sebacancinos](https://github.com/sebacancinos))
- Load Auth0 credentials from plist from ObjC [\#37](https://github.com/auth0/Auth0.swift/pull/37) ([hzalaz](https://github.com/hzalaz))

## [1.0.0-beta.5](https://github.com/auth0/Auth0.swift/tree/1.0.0-beta.5) (2016-06-30)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-beta.4...1.0.0-beta.5)

**Changed:**

- Renamed `UserProfile` to `Profile` [\#34](https://github.com/auth0/Auth0.swift/pull/34) ([hzalaz](https://github.com/hzalaz))

**Breaking changes:**

The `UserProfile` is not named `Profile` (in Objective C is `A0Profile`).

## [1.0.0-beta.4](https://github.com/auth0/Auth0.swift/tree/1.0.0-beta.4) (2016-06-30)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-beta.3...1.0.0-beta.4)

**Added:**

- Allow to override telemetry info [\#32](https://github.com/auth0/Auth0.swift/pull/32) ([hzalaz](https://github.com/hzalaz))

**Fixed:**

- Made `start()` of `ConcatRequest` public [\#31](https://github.com/auth0/Auth0.swift/pull/31) ([pablolvillar](https://github.com/pablolvillar))
- Send Authorization header was sent for Users API [\#33](https://github.com/auth0/Auth0.swift/pull/33) ([hzalaz](https://github.com/hzalaz))

## [1.0.0-beta.3](https://github.com/auth0/Auth0.swift/tree/1.0.0-beta.3) (2016-06-20)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-beta.2...1.0.0-beta.3)

**Added:**

- Show better error when PKCE is not enabled in client [\#30](https://github.com/auth0/Auth0.swift/pull/30) ([hzalaz](https://github.com/hzalaz))
- Auth0 telemetry information [\#29](https://github.com/auth0/Auth0.swift/pull/29) ([hzalaz](https://github.com/hzalaz))
- Multifactor support for `/oauth/ro` [\#28](https://github.com/auth0/Auth0.swift/pull/28) ([hzalaz](https://github.com/hzalaz))

**Changed:**

- Added parameter labels in Authentication API methods [\#27](https://github.com/auth0/Auth0.swift/pull/27) ([hzalaz](https://github.com/hzalaz))
- Reworked Error handling [\#26](https://github.com/auth0/Auth0.swift/pull/26) ([hzalaz](https://github.com/hzalaz))

**Breaking changes:**

Most of the Authentication API methods first parameters labels are required so for example this call:

```swift
Auth0
    .login("mail@mail.com", password: "secret", connection: "connection")
```

now needs to have the `usernameOrEmail` parameter label

```swift
Auth0
    .login(usernameOrEmail: "mail@mail.com", password: "secret", connection: "connection")
```

Now all `Result` object return `ErrorType` instead of a specific error, this means that OS errors like no network, or connection could not be established are not wrapped in any Auth0 error anymore.

Also the error types that **Auth0.swift** API clients can return are no longer an enum but a simple object:

* Authentication API: `AuthenticationError`
* Management API: `ManagementError`

Each of them has it's own values according at what each api returns when the request fails. Now to handle **Auth0.swift** errors in your callback, you can do the following:

```swift
Auth0
    .login(usernameOrEmail: "mail@mail.com", password: "secret", connection: "connection")
    .start { result in
        switch result {
        case .Success(let credentials):
            print(credentials)
        case .Failure(let cause as AuthenticationError):
            print("Auth0 error was \(cause)")
        case .Failure(let cause):
            print("Unknown error: \(cause)")
        }
    }
```

Also, `AuthenticationError` has some helper methods to check for common failures:

```swift
Auth0
    .login(usernameOrEmail: "mail@mail.com", password: "secret", connection: "connection")
    .start { result in
        switch result {
        case .Success(let credentials):
            print(credentials)
        case .Failure(let cause as AuthenticationError) where cause.isMultifactorRequired:
            print("Need to ask the user for his mfa code!")
        case .Failure(let cause):
            print("Login failed with error: \(cause)")
        }
    }
```

## [1.0.0-beta.2](https://github.com/auth0/Auth0.swift/tree/1.0.0-beta.2) (2016-06-09)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/1.0.0-beta.1...1.0.0-beta.2)

**Added:**

- Authenticate a user using web-based authentication with Auth0, e.g. social authentication. (iOS Only) [\#19](https://github.com/auth0/Auth0.swift/pull/19),[\#20](https://github.com/auth0/Auth0.swift/pull/20) & [\#24](https://github.com/auth0/Auth0.swift/pull/24) ([hzalaz](https://github.com/hzalaz))
- Load Auth0 clientId & domain from a plist file [\#21](https://github.com/auth0/Auth0.swift/pull/21) ([hzalaz](https://github.com/hzalaz))
- Request Logging support [\#23](https://github.com/auth0/Auth0.swift/pull/23) ([hzalaz](https://github.com/hzalaz))

**Fixed:**

- Date parsing format in `UserProfile` [\#22](https://github.com/auth0/Auth0.swift/pull/22) ([srna](https://github.com/srna))

## [1.0.0-beta.1](https://github.com/auth0/Auth0.swift/tree/1.0.0-beta.1) (2016-05-25)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/0.3.0...1.0.0-beta.1)

**Added:**

- Auth0 Authentication API endpoints, now you can use **Auth0.swift** to write your own login box.

**Changed:**

- Dropped support for iOS 8
- Reworked Swift API and updated to Swift 2.2
- Removed Alamofire as dependency, all networking is done with `NSURLSession` directly
- Request callbacks, in Swift, have a single value of enum `Result<Payload,ErrorType>`
- Improved code docs

## [0.3.0](https://github.com/auth0/Auth0.swift/tree/0.3.0) (2016-04-25)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/0.2.0...0.3.0)

**Closed issues:**

- Alamofire dependency [\#5](https://github.com/auth0/Auth0.swift/issues/5)

**Merged pull requests:**

- Update dependencies and fix compile issues [\#7](https://github.com/auth0/Auth0.swift/pull/7) ([hzalaz](https://github.com/hzalaz))
- Load domain from Auth0.plist if not in main infoDictionary [\#4](https://github.com/auth0/Auth0.swift/pull/4) ([bradfol](https://github.com/bradfol))

## [0.2.0](https://github.com/auth0/Auth0.swift/tree/0.2.0) (2015-09-17)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/0.1.2...0.2.0)

**Merged pull requests:**

- Swift 2.0 [\#2](https://github.com/auth0/Auth0.swift/pull/2) ([hzalaz](https://github.com/hzalaz))

## [0.1.2](https://github.com/auth0/Auth0.swift/tree/0.1.2) (2015-07-03)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/0.1.1...0.1.2)

**Merged pull requests:**

- Allow to call method users from Auth0 struct [\#1](https://github.com/auth0/Auth0.swift/pull/1) ([hzalaz](https://github.com/hzalaz))

## [0.1.1](https://github.com/auth0/Auth0.swift/tree/0.1.1) (2015-07-02)
[Full Changelog](https://github.com/auth0/Auth0.swift/compare/0.1.0...0.1.1)

## [0.1.0](https://github.com/auth0/Auth0.swift/tree/0.1.0) (2015-07-02)


\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*
