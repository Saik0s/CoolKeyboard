import SwiftUI

// MARK: - ContentView

struct ContentView: View {
  @State private var isKeyboardEnabled: Bool = checkIfKeyboardEnabled()
  @State private var text: String = ""
  let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()


  init() {
    UITextView.appearance().backgroundColor = .clear
  }

  var body: some View {
    NavigationView {
      VStack(spacing: 16) {
        Label {
          Text(isKeyboardEnabled ? "Keyboard is enabled" : "Keyboard is not enabled")
        } icon: {
          isKeyboardEnabled ? Image(systemName: "checkmark.circle") : Image(systemName: "multiply.circle")
        }
          .foregroundColor(isKeyboardEnabled ? Color(.systemGreen) : Color(.systemRed))
          .padding()

        if isKeyboardEnabled {
          VStack(alignment: .leading, spacing: 8) {
            Text("Try it")
              .font(.headline)
              .foregroundColor(Color(.tertiaryLabel))
              .padding(.horizontal)

            Group {
              if #available(iOS 16.0, *) {
                TextEditor(text: $text)
                  .scrollContentBackground(.hidden)
              } else {
                TextEditor(text: $text)
              }
            }
              .padding()
              .background(
                RoundedRectangle(cornerRadius: 16).fill(Color(.tertiarySystemGroupedBackground))
                  .shadow(color: Color(.secondarySystemFill).opacity(0.5), radius: 12, x: 0, y: 8)
              )

            Text("c: \(text.count)")
              .font(.caption)
              .opacity(0.5)
          }
            .frame(maxHeight: .infinity)
        } else {
          Spacer()

          VStack(spacing: 0) {
            Text("In order to use the keyboard, you must first enable it in System Settings, then select it with 🌐 when you start typing.")
              .padding()

            Button {
              openSettings()
            } label: {
              Label {
                Text("Open Settings")
              } icon: {
                Image(systemName: "gearshape")
              }
                .padding()
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundColor(.white)
                .background(Capsule().fill(Color(.systemGreen)))
            }
          }
            .padding()
            .background(
              RoundedRectangle(cornerRadius: 16).fill(Color(.tertiarySystemGroupedBackground))
                .shadow(color: Color(.secondarySystemFill).opacity(0.5), radius: 12, x: 0, y: 8)
            )

          Spacer()
        }
      }
        .padding(16)
        .buttonStyle(.plain)
        .background(Color(.secondarySystemGroupedBackground).ignoresSafeArea())
        .navigationTitle("Cool Keyboard")
        .navigationBarTitleDisplayMode(.inline)
    }
    .navigationViewStyle(.stack)
      .onReceive(timer) { _ in
        isKeyboardEnabled = checkIfKeyboardEnabled()
      }
  }

  func openSettings() {
    let url = URL(string: UIApplication.openSettingsURLString)
    guard let url else { return }
    UIApplication.shared.open(url)
  }
}

private func checkIfKeyboardEnabled() -> Bool {
  let bundleId = "com.igortarasenko.Cool-Keyboard.Keyboard"
  let keyboards = UserDefaults.standard.object(forKey: "AppleKeyboards") as? [String] ?? []

  return keyboards.contains {
    guard bundleId.hasSuffix("*") else {
      return $0 == bundleId
    }
    let wildcard = bundleId.replacingOccurrences(of: "*", with: "")
    return $0.hasPrefix(wildcard)
  }
}


// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
