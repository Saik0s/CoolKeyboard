import Foundation
import SwiftUI
import UIKit

extension EdgeInsets {
  static func all(_ all: CGFloat) -> EdgeInsets {
    self.init(top: all, leading: all, bottom: all, trailing: all)
  }

  static func horizontal(_ horizontal: CGFloat, vertical: CGFloat) -> EdgeInsets {
    self.init(top: vertical, leading: horizontal, bottom: vertical, trailing: horizontal)
  }
}

extension CGSize {
  static let iPadProLargeScreenPortrait = CGSize(width: 1024, height: 1366)

  static let iPadProLargeScreenLandscape = iPadProLargeScreenPortrait.flipped()

  static let iPadProSmallScreenPortrait = CGSize(width: 834, height: 1194)

  static let iPadProSmallScreenLandscape = iPadProSmallScreenPortrait.flipped()

  static let iPadScreenPortrait = CGSize(width: 768, height: 1024)

  static let iPadScreenLandscape = iPadScreenPortrait.flipped()

  static let iPhoneProMaxScreenPortrait = CGSize(width: 428, height: 926)

  static let iPhoneProMaxScreenLandscape = iPhoneProMaxScreenPortrait.flipped()

  func flipped() -> CGSize {
    CGSize(width: height, height: width)
  }

  func isScreenSize(_ size: CGSize) -> Bool {
    self == size || self == size.flipped()
  }
}

// MARK: - InterfaceOrientationResolver

protocol InterfaceOrientationResolver {
  var interfaceOrientation: InterfaceOrientation { get }
}

// MARK: - UIScreen + InterfaceOrientationResolver

extension UIScreen: InterfaceOrientationResolver {}

extension UIScreen {
  var interfaceOrientation: InterfaceOrientation {
    let point = coordinateSpace.convert(CGPoint.zero, to: fixedCoordinateSpace)
    switch (point.x, point.y) {
    case (0, 0): return .portrait
    case let (x, y) where x != 0 && y != 0: return .portraitUpsideDown
    case let (0, y) where y != 0: return .landscapeLeft
    case let (x, 0) where x != 0: return .landscapeRight
    default: return .unknown
    }
  }
}
