import Foundation
import SwiftUI
import UIKit

// MARK: - KeyboardView

struct KeyboardView: View {
  @ObservedObject var viewModel: KeyboardViewModel

  var horizontalPadding: CGFloat { 0 }
  var verticalPadding: CGFloat { 0 }

  var body: some View {
    VStack(spacing: verticalPadding) {
      HStack(spacing: horizontalPadding) {
        ForEach(viewModel.firstRow, id: \.self) { buttonType in
          KeyboardButton(buttonType: buttonType, layoutConfiguration: viewModel.layoutConfiguration) { _ in
            viewModel.textDocumentProxy.insertText(buttonType.insertText)
          }
        }
      }
      HStack(spacing: horizontalPadding) {
        ForEach(viewModel.secondRow, id: \.self) { buttonType in
          KeyboardButton(buttonType: buttonType, layoutConfiguration: viewModel.layoutConfiguration) { _ in
            viewModel.textDocumentProxy.insertText(buttonType.insertText)
          }
        }
      }
      HStack(spacing: horizontalPadding) {
        KeyboardButton(buttonType: .shift(isPressed: viewModel.currentKeyboardType == .upperCase),
                       layoutConfiguration: viewModel.layoutConfiguration) { _ in
          viewModel.toggleCase()
        }
        ForEach(viewModel.thirdRow, id: \.self) { buttonType in
          KeyboardButton(buttonType: buttonType, layoutConfiguration: viewModel.layoutConfiguration) { _ in
            viewModel.textDocumentProxy.insertText(buttonType.insertText)
          }
        }
        KeyboardButton(buttonType: .backspace, layoutConfiguration: viewModel.layoutConfiguration) { _ in
          viewModel.textDocumentProxy.deleteBackward()
        }
      }
      HStack(spacing: horizontalPadding) {
        KeyboardButton(buttonType: .number(isSelected: viewModel.currentKeyboardType == .numbers),
                       layoutConfiguration: viewModel.layoutConfiguration) { _ in
          viewModel.toggleNumbers()
        }

        if viewModel.controller?.needsInputModeSwitchKey == true {
          KeyboardButton(buttonType: .inputModeSwitch, layoutConfiguration: viewModel.layoutConfiguration) { _ in
            viewModel.controller?.advanceToNextInputMode()
          }
        }

        KeyboardButton(buttonType: .nextLayout("\(viewModel.layoutIndex)/\(allLayouts.count)"),
                       layoutConfiguration: viewModel.layoutConfiguration) { _ in
          viewModel.nextLayout()
        }

        KeyboardButton(buttonType: .space, layoutConfiguration: viewModel.layoutConfiguration) { _ in
          viewModel.textDocumentProxy.insertText(KeyboardButtonType.space.insertText)
        }

        KeyboardButton(buttonType: .dismissKeyboard, layoutConfiguration: viewModel.layoutConfiguration) { _ in
          viewModel.controller?.dismissKeyboard()
        }

        KeyboardButton(buttonType: .return, layoutConfiguration: viewModel.layoutConfiguration) { _ in
          viewModel.textDocumentProxy.insertText(KeyboardButtonType.return.insertText)
        }
      }
    }
    .background(Color(.tertiarySystemGroupedBackground))
  }
}

// MARK: - KeyboardView_Previews

// PreviewProvider
struct KeyboardView_Previews: PreviewProvider {
  private class MockTextDocumentProxy: NSObject, UITextDocumentProxy {
    var documentContextBeforeInput: String?

    var documentContextAfterInput: String?

    var selectedText: String?

    var documentInputMode: UITextInputMode?

    var documentIdentifier: UUID = .init()

    func adjustTextPosition(byCharacterOffset: Int) {
      print("adjustTextPosition: \(byCharacterOffset)")
    }

    func setMarkedText(_ text: String, selectedRange: NSRange) {
      print("setMarkedText: \(text), selectedRange: \(selectedRange)")
    }

    func unmarkText() {
      print("unmarkText")
    }

    var hasText: Bool = false

    func insertText(_ text: String) {
      print("insertText: \(text)")
    }

    func deleteBackward() {
      print("deleteBackward")
    }
  }

  static var previews: some View {
    KeyboardView(viewModel: KeyboardViewModel(textDocumentProxy: MockTextDocumentProxy(), controller: nil))
      .frame(width: 375, height: 250)
  }
}
