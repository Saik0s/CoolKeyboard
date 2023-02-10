import Foundation
import SwiftUI
import UIKit

// MARK: - KeyboardLayoutVariant

struct KeyboardLayoutVariant {
  let firstRow: [KeyboardButtonType]
  let secondRow: [KeyboardButtonType]
  let thirdRow: [KeyboardButtonType]
}

extension KeyboardLayoutVariant {
  static let numbers = KeyboardLayoutVariant(
    firstRow: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"],
    secondRow: ["-", "/", ":", ";", "(", ")", "$", "&", "@", "\""],
    thirdRow: [".", ",", "?", "!", "'", "#"]
  )

  static let emoji = KeyboardLayoutVariant(
    firstRow: ["😀", "😃", "😄", "😁", "😆", "😅", "🤣", "😂", "🙂", "🙃"],
    secondRow: ["😉", "😊", "😇", "🥰", "😍", "🤩", "😘", "😗", "😚", "😙"],
    thirdRow: ["😋", "😛", "😜", "🤪", "😝", "🤑", "🤗", "🤭", "🤫", "🤔"]
  )
}
