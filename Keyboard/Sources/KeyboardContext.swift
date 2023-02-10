import Foundation
import SwiftUI
import UIKit

struct KeyboardContext {
  let deviceType: DeviceType
  let screenSize: CGSize
  let interfaceOrientation: InterfaceOrientation

  init(deviceType: DeviceType, screenSize: CGSize, interfaceOrientation: InterfaceOrientation) {
    self.deviceType = deviceType
    self.screenSize = screenSize
    self.interfaceOrientation = interfaceOrientation
  }

  static func current() -> KeyboardContext {
    KeyboardContext(deviceType: .current, screenSize: UIScreen.main.bounds.size, interfaceOrientation: .current)
  }
}
