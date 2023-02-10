import Foundation
import SwiftUI
import UIKit

// MARK: - KeyboardLayout

struct KeyboardLayout {
  let lowerCase: KeyboardLayoutVariant
  let upperCase: KeyboardLayoutVariant
}

extension KeyboardLayout {
  static let standard = KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
      secondRow: ["a", "s", "d", "f", "g", "h", "j", "k", "l"],
      thirdRow: ["z", "x", "c", "v", "b", "n", "m"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"],
      secondRow: ["A", "S", "D", "F", "G", "H", "J", "K", "L"],
      thirdRow: ["Z", "X", "C", "V", "B", "N", "M"]
    )
  )
}
