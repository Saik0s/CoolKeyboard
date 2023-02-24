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
    VStack(spacing: 16) {
      Label {
        Text(isKeyboardEnabled ? "Keyboard is enabled" : "Keyboard is not enabled")
      } icon: {
        isKeyboardEnabled ? Image(systemName: "checkmark.circle") : Image(systemName: "multiply.circle")
      }
      .foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.05, blue: 0.05, alpha: 1)))
      .padding()

      Spacer()

      if isKeyboardEnabled {
        VStack(alignment: .leading, spacing: 8) {
          Text("Try it")
            .font(.system(size: 28, weight: .bold))
            .foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.05, blue: 0.05, alpha: 1)))
            .padding(.horizontal)

          Group {
            if #available(iOS 16.0, *) {
              TextEditor(text: $text)
                .scrollContentBackground(.hidden)
            } else {
              TextEditor(text: $text)
            }
          }
          .foregroundColor(Color(#colorLiteral(red: 0.35, green: 0.35, blue: 0.35, alpha: 1)))
          .padding()
          .background(Color(#colorLiteral(red: 0.9686274528503418, green: 0.9686274528503418, blue: 0.9686274528503418, alpha: 1))
            .cornerRadius(50)
            .shadow(color: Color(.secondarySystemFill).opacity(0.5), radius: 12, x: 0, y: 8))
        }
        .padding(.horizontal, 28)
        .frame(maxHeight: .infinity)
      } else {
        VStack(spacing: 32) {
          VStack(spacing: 12) {
            Text("Add Keyboard")
              .fontWeight(.bold)
              .font(.title)
              .foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.05, blue: 0.05, alpha: 1)))

            Text("In order to use the keyboard, you must first enable it in System Settings, then select it with 🌐 when you start typing.")
              .font(.subheadline)
              .multilineTextAlignment(.center)
              .foregroundColor(Color(#colorLiteral(red: 0.35, green: 0.35, blue: 0.35, alpha: 1)))
          }
          .frame(maxWidth: .infinity)

          VStack(alignment: .leading, spacing: 20) {
            Button {
              openSettings()
            } label: {
              Text("Open Settings")
                .fontWeight(.bold)
                .font(.callout)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(Color(red: 0.98, green: 0.82, blue: 0.32))
                .cornerRadius(20)
                .foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.05, blue: 0.05, alpha: 1)))
            }
          }
        }
        .padding(.horizontal, 32)
        .padding(.vertical, 40)
        .background(Color(.white)
          .cornerRadius(50)
          .shadow(color: Color(.secondarySystemFill).opacity(0.5), radius: 12, x: 0, y: 8))
        .padding(.horizontal, 28)
      }
    }
    .padding(.bottom, 32)
    .buttonStyle(.plain)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(AnimatedGradientView().ignoresSafeArea().onTapGesture { UIApplication.shared.endEditing() })
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

// MARK: - AnimatedGradientView

struct AnimatedGradientView: View {
  @State var startPoint = UnitPoint(x: 0, y: 0)
  @State var endPoint = UnitPoint(x: 0, y: 2)

  var body: some View {
    RoundedRectangle(cornerRadius: 8)
      .fill(
        LinearGradient(
          gradient: Gradient(stops: [
            Gradient.Stop(color: Color(red: 0.7627579569816589, green: 0.5769626498222351, blue: 1, opacity: 1), location: 0),
            Gradient.Stop(color: Color(red: 0.8950124382972717, green: 0.1650690883398056, blue: 0.4233647286891937, opacity: 1), location: 1),
          ]),
          startPoint: startPoint,
          endPoint: endPoint
        )
      ).onAppear {
        withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
          self.startPoint = UnitPoint(x: 1, y: -1)
          self.endPoint = UnitPoint(x: 0, y: 1)
        }
      }
  }

  static let gradient02 = LinearGradient(
    gradient: Gradient(stops: [
      Gradient.Stop(color: Color(red: 0.7627579569816589, green: 0.5769626498222351, blue: 1, opacity: 1), location: 0),
      Gradient.Stop(color: Color(red: 0.8950124382972717, green: 0.1650690883398056, blue: 0.4233647286891937, opacity: 1), location: 1),
    ]),
    startPoint: UnitPoint(x: 0.6543412724314833, y: 0.17282936378425823),
    endPoint: UnitPoint(x: 1.1102230246251565e-16, y: 0.17282936378425834)
  )
}

extension UIApplication {
  func endEditing() {
    sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
