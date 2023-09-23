#if os(iOS)
import UIKit

extension UIWindow {
   /**
    * This function allows you to override the user interface style for the current view and all its subviews.
    * - Parameter userInterfaceStyle: The desired user interface style to be applied to the view and all its subviews.
    */
   public func override(_ userInterfaceStyle: UIUserInterfaceStyle) {
      if #available(iOS 13.0, tvOS 13.0, *) {
         overrideUserInterfaceStyle = userInterfaceStyle
      }
   }
}
extension Array where Element: UIWindow {
   /**
    * This function allows you to override the user interface style for all UIWindow elements in the array.
    * - Parameter userInterfaceStyle: The desired user interface style to be applied to all UIWindow elements.
    */
   public func override(_ userInterfaceStyle: UIUserInterfaceStyle) {
      self.forEach { window in // Loop through each window in the array
         window.override(userInterfaceStyle) // Override the user interface style for the current window
      }
   }
}
#endif