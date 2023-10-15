#if os(iOS)
import UIKit

extension UIViewController {
   /**
    * This computed property checks if the dark mode is currently enabled on the device.
    * It uses the `userInterfaceStyle` property of the `traitCollection` to determine the interface style.
    * If the `userInterfaceStyle` is `.dark`, it means dark mode is enabled and the property returns `true`.
    * If the `userInterfaceStyle` is not `.dark` or the iOS version is less than 13.0 (which doesn't support `userInterfaceStyle`), the property returns `false`.
    * 
    * - Returns: A Boolean value indicating whether dark mode is enabled. Returns `true` if dark mode is enabled, `false` otherwise.
    */
   public var isDarkMode: Bool {
      if #available(iOS 13.0, *) { // Check if the device is running iOS 13 or later
         return self.traitCollection.userInterfaceStyle == .dark // Return true if the user interface style is dark, false otherwise
      } else { // If the device is running an earlier version of iOS
         return false // Return false, as dark mode is not supported
      }
   }
}
#endif
