#if os(macOS)
import Foundation
/**
 * A central location to store light / dark-mode value in `macOS`
 * - Remark: Support for catalina (seems to work w/o out it tho): https://stackoverflow.com/a/57429660/5389500
 * - Remark: React to OS changes: https://github.com/ruiaureliano/macOS-Appearance/blob/master/Appearance/Source/AppDelegate.swift (also in darkmode issues etc)
 * - Note: Article about the new auto-mode: https://medium.com/@ruiaureliano/check-light-dark-appearance-for-macos-mojave-catalina-fb2343af875f
 */
public enum Apperance: String {
   case dark, light
}
extension Apperance {
   /**
    * - Note: We lowercase the typeStr because it seems this key was uppercased in macos 11, in 10.5 it was lowercase
    */
   public init() {
      let typeStr: String = UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? Apperance.light.rawValue
      self = Apperance(rawValue: typeStr.lowercased()) ?? Apperance.light
   }
   /**
    * Easily check if OS is in darkMode
    * - Remark: There is another way to check darkMode here: `UIViewController+Extension.swift`
    * ## Example:
    * Apperance().inDarkMode
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
 * Detect apperance change (light / dark mode)
 * - Remark: Uses notification center to detect mode change: https://stackoverflow.com/questions/39048894/how-to-detect-switch-between-macos-default-dark-mode-using-swift-3
 * ## Example:
 * ChangeDetector.onInterfaceChange = {/*Apperance().inDarkMode*/}
 */
public final class ChangeDetector {
   /**
    * Callback closure that is called on OS apperance change
    */
   public static var onInterfaceChange: () -> Void = {}
   /**
    * Must be called to activate listening for OS apperance change call
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
 * Adds type for DarkMode support
 */
extension Notification.Name {
   static let AppleInterfaceThemeChangedNotification = Notification.Name("AppleInterfaceThemeChangedNotification")
}
#endif
// ⚠️️ this also works ⚠️️, might be more backward / forward compatible?
// self.init(name: nil) {
//   switch $0.name {
//   case .darkAqua, .vibrantDark, .accessibilityHighContrastDarkAqua, .accessibilityHighContrastVibrantDark:
//      return dark
//   default:
//      return light
//   }
// }
