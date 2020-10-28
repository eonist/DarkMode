#if os(iOS)
import UIKit

extension UIWindow {
   /**
    * Overrides the user interface style adopted by the view and all of its subviews.
    * - Parameter userInterfaceStyle: The user interface style adopted by the view and all of its subviews.
    */
   public func override(_ userInterfaceStyle: UIUserInterfaceStyle) {
      if #available(iOS 13.0, tvOS 13.0, *) {
         overrideUserInterfaceStyle = userInterfaceStyle
      }
   }
}
extension Array where Element: UIWindow {
   /**
    * Overrides the user interface style adopted by all elements.
    * - Parameter userInterfaceStyle: The user interface style adopted by all elements.
    */
   public func override(_ userInterfaceStyle: UIUserInterfaceStyle) {
      self.forEach { window in
         window.override(userInterfaceStyle)
      }
   }
}
#endif
