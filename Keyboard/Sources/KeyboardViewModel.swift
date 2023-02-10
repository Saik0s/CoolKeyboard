import Foundation
import SwiftUI
import UIKit

class KeyboardViewModel: ObservableObject {
  var textDocumentProxy: UITextDocumentProxy
  weak var controller: UIInputViewController?

  @Published var currentKeyboardType: KeyboardType = .lowerCase
  @Published var layoutIndex: Int = UserDefaults.standard.integer(forKey: "layoutIndex")
  @Published var layoutConfiguration = KeyboardLayoutConfiguration.standard(for: .current())

  var layout: KeyboardLayout { allLayouts.count > layoutIndex ? allLayouts[layoutIndex] : .standard }

  var firstRow: [KeyboardButtonType] {
    layoutVariant.firstRow
  }

  var secondRow: [KeyboardButtonType] {
    layoutVariant.secondRow
  }

  var thirdRow: [KeyboardButtonType] {
    layoutVariant.thirdRow
  }

  var layoutVariant: KeyboardLayoutVariant {
    switch currentKeyboardType {
    case .lowerCase:
      return layout.lowerCase
    case .upperCase:
      return layout.upperCase
    case .numbers:
      return .numbers
    case .emoji:
      return .emoji
    }
  }

  init(textDocumentProxy: UITextDocumentProxy, controller: UIInputViewController?) {
    self.textDocumentProxy = textDocumentProxy
    self.controller = controller
  }

  func toggleCase() {
    if currentKeyboardType == .lowerCase {
      currentKeyboardType = .upperCase
    } else {
      currentKeyboardType = .lowerCase
    }
  }

  func toggleNumbers() {
    if currentKeyboardType != .numbers {
      currentKeyboardType = .numbers
    } else {
      currentKeyboardType = .lowerCase
    }
  }

  func nextLayout() {
    layoutIndex = (layoutIndex + 1) % allLayouts.count
    UserDefaults.standard.set(layoutIndex, forKey: "layoutIndex")
  }
}
