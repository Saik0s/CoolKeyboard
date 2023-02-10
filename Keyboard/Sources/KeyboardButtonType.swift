import Foundation
import SwiftUI
import UIKit

enum KeyboardButtonType: ExpressibleByStringLiteral, Hashable {
  typealias StringLiteralType = String

  case character(String)
  case shift(isPressed: Bool)
  case backspace
  case space
  case `return`
  case number(isSelected: Bool)
  case emoji
  case nextLayout(String)
  case inputModeSwitch
  case dismissKeyboard

  var insertText: String {
    switch self {
    case let .character(title):
      return title
    case .space:
      return " "
    case .return:
      return "\n"
    default:
      return ""
    }
  }

  @ViewBuilder var view: some View {
    switch self {
    case let .character(title):
      Text(title)
        .font(.title)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.quaternarySystemFill))
    case let .shift(isPressed):
      Image(systemName: isPressed ? "shift.fill" : "shift")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundColor(Color(isPressed ? .black : .label))
        .background(Color(isPressed ? .white : .clear))
    case .backspace:
      Image(systemName: "delete.left")
    case .space:
      Text("Space")
    case .return:
      Text("Return")
    case let .number(isSelected):
      Image(systemName: isSelected ? "abc" : "textformat.123")
    case .emoji:
      Text("😀")
    case let .nextLayout(text):
      VStack(spacing: 0) {
        Text("➡️")
        Text(text)
          .font(.caption)
          .opacity(0.5)
      }
    case .inputModeSwitch:
      Text("🌐")
    case .dismissKeyboard:
      Image(systemName: "keyboard.chevron.compact.down")
    }
  }

  init(stringLiteral value: StringLiteralType) {
    self = .character(value)
  }
}
