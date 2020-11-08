#if os(macOS)
import Foundation
/**
 * A central location to store light/dark-mode value in macOS
 * - Fixme: ⚠️️ rename to .dark and .light?
 * - Fixme: ⚠️️ add support for catalina: https://stackoverflow.com/a/57429660/5389500
 * - Fixme: ⚠️️ make it react to os changes: https://github.com/ruiaureliano/macOS-Appearance/blob/master/Appearance/Source/AppDelegate.swift
 * - Note: article about the new auto mode: https://medium.com/@ruiaureliano/check-light-dark-appearance-for-macos-mojave-catalina-fb2343af875f
 * ## Example:
 * Apperance().inDarkMode
 */
public enum Apperance: String {
   case Dark, Light
}
extension Apperance {
   public init() {
      let type = UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? "Light"
      self = Apperance(rawValue: type)!
   }
   public var inDarkMode: Bool {
      let currentStyle = Apperance()
      if case .Dark = currentStyle {
         return true
      } else if case .Light = currentStyle {
         return false
      } else {
         fatalError("Not supported")
      }
   }
}
/**
 * Detect apperance change (light/dark mode)
 * - Fixme: ⚠️️ rename to something more apropriate?
 * - Note: uses notification center to detect mode change: https://stackoverflow.com/questions/39048894/how-to-detect-switch-between-macos-default-dark-mode-using-swift-3
 * ## Example:
 * ChangeDetector.onInterfaceChange = {/*Apperance().inDarkMode*/}
 */
public final class ChangeDetector {
   /**
    * Callback closure that is called on OS apperance change
    */
   public static var onInterfaceChange: () -> Void = {}
   /**
    * Must be called to activate listening for os apperance change call
    */
   public static func activateChangeCallback() {
      DistributedNotificationCenter.default.addObserver(self, selector: #selector(interfaceModeChanged), name: .AppleInterfaceThemeChangedNotification, object: nil)
   }
   /**
    * Called when OS makes apperance change
    */
   @objc static func interfaceModeChanged() {
      onInterfaceChange()
   }
}
/**
 * Adds type for darkmode support
 */
extension Notification.Name {
   static let AppleInterfaceThemeChangedNotification = Notification.Name("AppleInterfaceThemeChangedNotification")
}
#endif
// ⚠️️ this also works ⚠️️, might be more backward / forward compatible?
//self.init(name: nil) {
//   switch $0.name {
//   case .darkAqua, .vibrantDark, .accessibilityHighContrastDarkAqua, .accessibilityHighContrastVibrantDark:
//      return dark
//   default:
//      return light
//   }
//}
