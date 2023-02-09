import Foundation
import ProjectDescription

let projectSettings: SettingsDictionary = [
  "GCC_TREAT_WARNINGS_AS_ERRORS": "YES",
  "SWIFT_TREAT_WARNINGS_AS_ERRORS": "YES",
  "OTHER_SWIFT_FLAGS[config=Debug][sdk=*][arch=*]": "-D DEBUG $(inherited) -Xfrontend -warn-long-function-bodies=500 -Xfrontend -warn-long-expression-type-checking=500 -Xfrontend -debug-time-function-bodies -Xfrontend -enable-actor-data-race-checks",
  "OTHER_LDFLAGS[config=Debug][sdk=*][arch=*]": "$(inherited) -Xlinker -interposable -all_load",
  "CODE_SIGN_STYLE": "Automatic",
  "IPHONEOS_DEPLOYMENT_TARGET": "14.0",
]

let project = Project(
  name: "CoolKeyboard",
  options: .options(
    textSettings: .textSettings(
      indentWidth: 2,
      tabWidth: 2
    )
  ),
  settings: .settings(configurations: [
    .debug(name: "Debug", settings: projectSettings, xcconfig: nil),
    .release(name: "Release", settings: projectSettings, xcconfig: nil),
  ]),
  targets: [
    Target(
      name: "CoolKeyboard",
      platform: .iOS,
      product: .app,
      bundleId: "com.igortarasenko.$(PRODUCT_NAME:rfc1034identifier)",
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
      bundleId: "com.igortarasenko.Cool-Keyboard.$(PRODUCT_NAME:rfc1034identifier)",
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
