#if os(macOS)
import Foundation

/**
 * This enum provides a central location to store the light / dark-mode value in `macOS`.
 * - Remark: This supports Catalina, but seems to work without it as well. More details can be found here: https://stackoverflow.com/a/57429660/5389500
 * - Remark: This enum can react to OS changes. More details can be found here: https://github.com/ruiaureliano/macOS-Appearance/blob/master/Appearance/Source/AppDelegate.swift
 * - Note: An article about the new auto-mode can be found here: https://medium.com/@ruiaureliano/check-light-dark-appearance-for-macos-mojave-catalina-fb2343af875f
 */
public enum Apperance: String {
   case dark, light
}

extension Apperance {
   /**
    * Initializes the Apperance enum.
    * - Note: The typeStr is lowercased because the key was uppercased in macOS 11, but was lowercase in 10.5.
    */
   public init() {
      let typeStr: String = UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? Apperance.light.rawValue
      self = Apperance(rawValue: typeStr.lowercased()) ?? Apperance.light
   }

   /**
    * Checks if the OS is in dark mode.
    * - Remark: Another way to check dark mode can be found in `UIViewController+Extension.swift`.
    * - Example: Use `Apperance().inDarkMode` to check if the OS is in dark mode.
    */
   public var inDarkMode: Bool {
      let currentStyle = Apperance()
      if case .dark = currentStyle {
         return true
      } else if case .light = currentStyle {
         return false
      } else {
         fatalError("Not supported")
      }
   }
}

/**
 * This class detects changes in appearance (light / dark mode).
 * - Remark: It uses the notification center to detect mode changes. More details can be found here: https://stackoverflow.com/questions/39048894/how-to-detect-switch-between-macos-default-dark-mode-using-swift-3
 * - Example: Use `ChangeDetector.onInterfaceChange = {/*Apperance().inDarkMode*/}` to set a callback for when the interface changes.
 */
public final class ChangeDetector {
   /**
    * This closure is called when the OS appearance changes.
    */
   public static var onInterfaceChange: () -> Void = {}

   /**
    * Call this function to start listening for OS appearance changes.
    */
   public static func activateChangeCallback() {
      DistributedNotificationCenter.default.addObserver(
         self, // observer object
         selector: #selector(interfaceModeChanged), // selector method
         name: .AppleInterfaceThemeChangedNotification, // notification name
         object: nil // notification object
      )
   }

   /**
    * This function is called when the OS changes its appearance.
    */
   @objc static func interfaceModeChanged() {
      onInterfaceChange()
   }
}

/**
 * This extension adds a type for DarkMode support.
 */
extension Notification.Name {
   static let AppleInterfaceThemeChangedNotification = Notification.Name("AppleInterfaceThemeChangedNotification")
}
#endif