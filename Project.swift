import Foundation
import ProjectDescription

let projectSettings: SettingsDictionary = [
  "GCC_TREAT_WARNINGS_AS_ERRORS": "YES",
  // "SWIFT_TREAT_WARNINGS_AS_ERRORS": "YES",
  "CODE_SIGN_STYLE": "Automatic",
  "IPHONEOS_DEPLOYMENT_TARGET": "14.0",
  "MARKETING_VERSION": "2.0.0",
]

let debugSettings: SettingsDictionary = [
  "OTHER_SWIFT_FLAGS": "-D DEBUG $(inherited) -Xfrontend -warn-long-function-bodies=500 -Xfrontend -warn-long-expression-type-checking=500 -Xfrontend -debug-time-function-bodies -Xfrontend -enable-actor-data-race-checks",
  "OTHER_LDFLAGS": "-Xlinker -interposable $(inherited)",
]

let project = Project(
  name: "CoolKeyboard",
  options: .options(
    disableShowEnvironmentVarsInScriptPhases: true,
    textSettings: .textSettings(
      indentWidth: 2,
      tabWidth: 2
    )
  ),
  settings: .settings(
    base: projectSettings,
    debug: debugSettings,
    release: [:],
    defaultSettings: .recommended
  ),
  targets: [
    Target(
      name: "CoolKeyboard",
      platform: .iOS,
      product: .app,
      bundleId: "com.igortarasenko.Cool-Keyboard",
      deploymentTarget: .iOS(targetVersion: "14.0", devices: [.iphone, .ipad]),
      infoPlist: .extendingDefault(with: [
        "CFBundleURLTypes": [
          [
            "CFBundleTypeRole": "Editor",
            "CFBundleURLName": "CoolKeyboard",
            "CFBundleURLSchemes": [
              "coolKeyboard",
            ],
          ],
        ],
        "UIApplicationSceneManifest": [
          "UIApplicationSupportsMultipleScenes": false,
          "UISceneConfigurations": [
          ],
        ],
        "ITSAppUsesNonExemptEncryption": false,
        "UILaunchScreen": [
          "UILaunchScreen": [:],
        ],
      ]),
      sources: .paths([.relativeToManifest("App/Sources/**")]),
      resources: [
        "App/Resources/**",
      ],
      dependencies: [
        .target(name: "CoolKeyboardKeyboard"),
      ]
    ),
    Target(
      name: "CoolKeyboardKeyboard",
      platform: .iOS,
      product: .appExtension,
      bundleId: "com.igortarasenko.Cool-Keyboard.Keyboard",
      infoPlist: .extendingDefault(with: [
        "CFBundleDisplayName": "Cool Keyboard",
        "NSExtension": [
          "NSExtensionAttributes": [
            "PrimaryLanguage": "en-US",
            "PrefersRightToLeft": false,
            "IsASCIICapable": false,
            "RequestsOpenAccess": true,
          ],
          "NSExtensionPointIdentifier": "com.apple.keyboard-service",
          "NSExtensionPrincipalClass": "$(PRODUCT_MODULE_NAME).KeyboardViewController",
        ],
      ]),
      sources: .paths([.relativeToManifest("Keyboard/Sources/**")]),
      resources: [
        "Keyboard/Resources/**",
      ],
      dependencies: [
      ]
    ),
  ]
)
