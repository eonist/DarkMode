#if os(iOS)
import UIKit

extension UIViewController {
   /**
    * Assert if dark-mode is enabled
    */
   public var isDarkMode: Bool {
      if #available(iOS 13.0, *) {
         return self.traitCollection.userInterfaceStyle == .dark
      } else {
         return false
      }
   }
}
#endif
