import Foundation
import SwiftUI
import UIKit

// MARK: - KeyboardState

class KeyboardState: ObservableObject, KeyboardEnabledStateInspector {
  let bundleId: String

  var isEnabled: Bool {
    isKeyboardEnabled(withBundleId: bundleId)
  }

  var isActive: Bool {
    isKeyboardActive(withBundleId: bundleId)
  }
}

// MARK: - KeyboardEnabledStateInspector

public protocol KeyboardEnabledStateInspector {}

public extension KeyboardEnabledStateInspector {
  /// Get a list of all active keyboard bundle identifiers.
  var activeKeyboardBundleIds: [String] {
    let modes = UITextInputMode.activeInputModes
    let displayed = modes.filter { $0.value(forKey: "isDisplayed") as? Int == 1 }
    let ids = displayed.compactMap { $0.value(forKey: "identifier") as? String }
    return ids
  }

  /// Get a list of all enabled keyboard bundle identifiers.
  /// - Parameters:
  ///  - defaults: The user defaults instance to use, by default `.standard`.
  func enabledKeyboardBundleIds(
    defaults: UserDefaults = .standard
  ) -> [String] {
    let key = "AppleKeyboards"
    return defaults.object(forKey: key) as? [String] ?? []
  }

  /// Whether or not a certain keyboard extension is active.
  ///
  /// - Parameters:
  ///  - bundleId: The bundle id of the keyboard extension.
  func isKeyboardActive(
    withBundleId bundleId: String
  ) -> Bool {
    let ids = activeKeyboardBundleIds
    return isKeyboardActive(withId: bundleId, in: ids)
  }

  /// Whether or not a certain keyboard extension is enabled.
  /// - Parameters:
  ///  - bundleId: The bundle id of the keyboard extension.
  ///  - defaults: The user defaults instance to use, by default `.standard`.
  func isKeyboardEnabled(
    withBundleId bundleId: String,
    defaults: UserDefaults = .standard
  ) -> Bool {
    let ids = enabledKeyboardBundleIds(defaults: defaults)
    return isKeyboardEnabled(withId: bundleId, in: ids)
  }
}

// MARK: - Internal Test Functions

extension KeyboardEnabledStateInspector {
  func isKeyboardActive(
    withId bundleId: String,
    in ids: [String]
  ) -> Bool {
    ids.first?.matches(bundleId) ?? false
  }

  func isKeyboardEnabled(
    withId bundleId: String,
    in ids: [String]
  ) -> Bool {
    ids.contains { $0.matches(bundleId) }
  }
}

extension String {
  var isWildcard: Bool {
    hasSuffix("*")
  }

  func matches(_ bundleId: String) -> Bool {
    if !bundleId.isWildcard { return self == bundleId }
    let wildcard = bundleId.replacingOccurrences(of: "*", with: "")
    return hasPrefix(wildcard)
  }
}
