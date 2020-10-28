#if os(iOS)
import UIKit

extension UIApplication {
   /**
    * Overrides the user interface style adopted by all windows in all connected scenes.
    * - Parameter userInterfaceStyle: The user interface style adopted by all windows in all connected scenes.
    * ## Examples:
    * let mode: UIUserInterfaceStyle = self.isDarkMode ? .light : .dark
    * UIApplication.shared.override(mode)
    */
   public func override(_ userInterfaceStyle: UIUserInterfaceStyle) {
      if #available(iOS 13.0, *), supportsMultipleScenes {
         connectedScenes.forEach { connectedScene in
            if let scene = connectedScene as? UIWindowScene {
               scene.windows.override(userInterfaceStyle)
            }
         }
      } else {
         windows.override(userInterfaceStyle)
      }
   }
}
#endif
