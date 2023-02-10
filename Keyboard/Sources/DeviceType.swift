import Foundation
import SwiftUI
import UIKit

enum DeviceType: String, CaseIterable, Equatable {
  case phone, pad

  static var current: DeviceType {
    UIDevice.current.userInterfaceIdiom == .pad ? .pad : .phone
  }
}
