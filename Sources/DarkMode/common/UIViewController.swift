import UIKit

extension UIViewController {
   /**
    * assert if darkmode is enabled
    */
   public var isDarkMode: Bool {
      if #available(iOS 13.0, *) {
         return self.traitCollection.userInterfaceStyle == .dark
      } else {
         return false
      }
   }
}
