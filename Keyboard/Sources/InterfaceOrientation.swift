import Foundation
import SwiftUI
import UIKit

enum InterfaceOrientation: String, CaseIterable, Equatable {
  case portrait, portraitUpsideDown, landscapeLeft, landscapeRight, unknown

  static var current: InterfaceOrientation {
    #if os(iOS)
      UIScreen.main.interfaceOrientation
    #else
        .portrait
    #endif
  }

  var isLandscape: Bool {
    self == .landscapeLeft || self == .landscapeRight
  }

  var isPortrait: Bool {
    self == .portrait || self == .portraitUpsideDown
  }
}
