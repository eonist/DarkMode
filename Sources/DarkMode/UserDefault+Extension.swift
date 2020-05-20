import UIKit

extension UserDefaults {
   /**
    * Save overriden user interface style
    */
   public var overridedUserInterfaceStyle: UIUserInterfaceStyle {
      get {
         UIUserInterfaceStyle(rawValue: integer(forKey: #function)) ?? .unspecified
      } set {
         set(newValue.rawValue, forKey: #function)
      }
   }
}
