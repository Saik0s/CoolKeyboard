import SwiftUI

// MARK: - ContentView

struct ContentView: View {
  @StateObject private var keyboardState = KeyboardEnabledState(bundleId: "com.igortarasenko.Cool-Keyboard.CoolKeyboardKeyboard")
  @State private var text: String = ""

  var body: some View {
    NavigationView {
      List {
        Section(header: Text("Try it"), footer: Text("c: \(text.count)")) {
          TextEditor(text: $text)
            .frame(height: 100)
        }
        Section(header: Text("Keyboard State"), footer: footerText) {
          KeyboardEnabledLabel(
            isEnabled: keyboardState.isEnabled,
            enabledText: "Keyboard is enabled",
            disabledText: "Keyboard not enabled"
          )
          KeyboardEnabledLabel(
            isEnabled: keyboardState.isActive,
            enabledText: "Keyboard is active",
            disabledText: "Keyboard is not active"
          )
        }
        Section(header: Text("Settings")) {
          Button {
            tryOpen(URL(string: UIApplication.openSettingsURLString))
          } label: {
            Label {
              Text("System Settings")
            } icon: {
              Image(systemName: "gearshape")
            }
          }
        }
      }
      .buttonStyle(.plain)
      .navigationTitle("Cool Keyboard")
    }
    .navigationViewStyle(.stack)
  }

  var footerText: some View {
    Text("You must enable the keyboard in System Settings, then select it with 🌐 when typing.")
  }

  /// Whether or not the opener can open the provided `url`.
  func canOpen(_ url: URL) -> Bool {
    #if os(iOS)
      return app.canOpenURL(url)
    #elseif os(macOS)
      return true
    #else
      return failForUnsupportedPlatform()
    #endif
  }

  /// Whether or not the opener can open the provided `url`.
  func canOpen(_ url: URL?) -> Bool {
    guard let url else { return false }
    return canOpen(url)
  }

  /// Whether or not the opener can open the provided url.
  func canOpen(urlString: String?) -> Bool {
    canOpen(URL(string: urlString ?? ""))
  }

  /// Try opening the provided `url`.
  func tryOpen(_ url: URL, completion: @escaping OpenUrlCompletion = { _ in }) {
    #if os(iOS)
      app.open(url, options: [:], completionHandler: completion)
    #elseif os(macOS)
      completion(workspace.open(url))
    #else
      failForUnsupportedPlatform()
    #endif
  }

  /// Try opening the provided `url`.
  func tryOpen(_ url: URL?, completion: @escaping OpenUrlCompletion = { _ in }) {
    guard let url else { return completion(false) }
    tryOpen(url, completion: completion)
  }

  /// Try opening the provided url.
  func tryOpen(urlString: String?, completion: @escaping OpenUrlCompletion = { _ in }) {
    tryOpen(URL(string: urlString ?? ""), completion: completion)
  }

  var app: UIApplication { .shared }

  @discardableResult
  func failForUnsupportedPlatform() -> Bool {
    assertionFailure("UrlOpener: Unsupported platform")
    return false
  }

  typealias OpenUrlCompletion = (_ success: Bool) -> Void
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
