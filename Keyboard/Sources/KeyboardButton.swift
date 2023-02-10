import Foundation
import SwiftUI
import UIKit

// MARK: - KeyboardButton

struct KeyboardButton: View {
  @State private var timer: Timer?
  @State var isLongPressing = false

  let buttonType: KeyboardButtonType
  let layoutConfiguration: KeyboardLayoutConfiguration
  let action: (KeyboardButtonType) -> Void

  var body: some View {
    Button {
      if isLongPressing {
        self.isLongPressing = false
        self.timer?.invalidate()
      } else {
        action(buttonType)
      }
    } label: {
      Group {
        if case .number = buttonType {
          buttonType.view
            .padding(.horizontal)
        } else if case .nextLayout = buttonType {
          buttonType.view
            .padding(.horizontal)
        } else if [.dismissKeyboard, .emoji, .return].contains(buttonType) {
          buttonType.view
            .padding(.horizontal)
        } else {
          buttonType.view
            .frame(maxWidth: .infinity)
        }
      }
        .frame(maxHeight: .infinity)
      .cornerRadius(layoutConfiguration.buttonCornerRadius)
      .font(.body)
      .minimumScaleFactor(0.01)
      .lineLimit(1)
      .foregroundColor(Color(.label))
    }
    .buttonStyle(makeStyleBody { configuration in
      configuration.label
        .overlay(
          Color.black.opacity(configuration.isPressed ? 0.2 : 0)
            .cornerRadius(layoutConfiguration.buttonCornerRadius)
        )
    })
    .background(
      Color(.tertiarySystemFill)
        .cornerRadius(layoutConfiguration.buttonCornerRadius)
        .shadow(color: .black, radius: 0, x: 0, y: 2)
    )
    .simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded { _ in
      self.isLongPressing = true
      self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _ in
        action(buttonType)
      })
    })
    .padding(layoutConfiguration.buttonInsets)
    .frame(height: layoutConfiguration.rowHeight)
  }
}

func makeStyleBody<Content: View>(_ body: @escaping (ButtonStyle.Configuration) -> Content) -> CustomStyle<Content> {
  CustomStyle(body: body)
}

// MARK: - CustomStyle

struct CustomStyle<Content: View>: ButtonStyle {
  let body: (Configuration) -> Content

  func makeBody(configuration: Configuration) -> some View {
    body(configuration)
  }
}
