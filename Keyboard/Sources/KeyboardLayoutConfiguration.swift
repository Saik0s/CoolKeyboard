import Foundation
import SwiftUI
import UIKit

struct KeyboardLayoutConfiguration: Equatable {
  init(buttonCornerRadius: CGFloat, buttonInsets: EdgeInsets, rowHeight: CGFloat) {
    self.buttonCornerRadius = buttonCornerRadius
    self.buttonInsets = buttonInsets
    self.rowHeight = rowHeight
  }

  var buttonCornerRadius: CGFloat
  var buttonInsets: EdgeInsets
  var rowHeight: CGFloat

  static func standard(for context: KeyboardContext) -> KeyboardLayoutConfiguration {
    standard(forDevice: context.deviceType, screenSize: context.screenSize, orientation: context.interfaceOrientation)
  }

  static func standard(forDevice device: DeviceType, screenSize size: CGSize, orientation: InterfaceOrientation) -> KeyboardLayoutConfiguration {
    switch device {
    case .pad: return standardPad(forScreenSize: size, orientation: orientation)
    default: return standardPhone(forScreenSize: size, orientation: orientation)
    }
  }

  static func standardPad(forScreenSize size: CGSize, orientation: InterfaceOrientation) -> KeyboardLayoutConfiguration {
    let isPortrait = orientation.isPortrait
    if size.isScreenSize(.iPadProLargeScreenPortrait) {
      return isPortrait ? .standardPadLargeProPortrait : .standardPadLargeProLandscape
    } else if size.isScreenSize(.iPadProSmallScreenPortrait) {
      return isPortrait ? .standardPadPortrait : .standardPadLandscape
    }
    return isPortrait ? .standardPadPortrait : .standardPadLandscape
  }

  static func standardPhone(forScreenSize size: CGSize, orientation: InterfaceOrientation) -> KeyboardLayoutConfiguration {
    let isPortrait = orientation.isPortrait
    if size.isScreenSize(.iPhoneProMaxScreenPortrait) {
      return isPortrait ? .standardPhoneProMaxPortrait : .standardPhoneProMaxLandscape
    }
    return isPortrait ? .standardPhonePortrait : .standardPhoneLandscape
  }

  static let standardPadLandscape = KeyboardLayoutConfiguration(
    buttonCornerRadius: 8,
    buttonInsets: .horizontal(7, vertical: 6),
    rowHeight: 86
  )

  static let standardPadPortrait = KeyboardLayoutConfiguration(
    buttonCornerRadius: 6,
    buttonInsets: .horizontal(6, vertical: 4),
    rowHeight: 64
  )

  static let standardPadLargeProLandscape = KeyboardLayoutConfiguration(
    buttonCornerRadius: 8,
    buttonInsets: .horizontal(7, vertical: 5),
    rowHeight: 88
  )

  static let standardPadLargeProPortrait = KeyboardLayoutConfiguration(
    buttonCornerRadius: 6,
    buttonInsets: .horizontal(4, vertical: 4),
    rowHeight: 69
  )

  static let standardPhoneLandscape = KeyboardLayoutConfiguration(
    buttonCornerRadius: 4,
    buttonInsets: .horizontal(3, vertical: 4),
    rowHeight: 40
  )

  static let standardPhonePortrait = KeyboardLayoutConfiguration(
    buttonCornerRadius: 4,
    buttonInsets: .horizontal(3, vertical: 6),
    rowHeight: 54
  )

  static let standardPhoneProMaxLandscape = KeyboardLayoutConfiguration
    .standardPhoneLandscape

  static let standardPhoneProMaxPortrait = KeyboardLayoutConfiguration(
    buttonCornerRadius: 4,
    buttonInsets: .horizontal(3, vertical: 6),
    rowHeight: 56
  )
}
