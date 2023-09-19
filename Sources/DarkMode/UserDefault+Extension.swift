#if os(iOS)
import UIKit
#endif

extension UserDefaults {
   /**
    * This computed property allows you to save and retrieve the user's preferred UI style.
    * It uses the UserDefaults system to persist this preference across app launches.
    * If no preference has been set, it defaults to 'unspecified'.
    */
   public var overridedUserInterfaceStyle: UIUserInterfaceStyle {
      get {
         // Fetch the raw value of the UI style from UserDefaults using the function name as the key.
         // If no value is found, default to 'unspecified'.
         UIUserInterfaceStyle(rawValue: integer(forKey: #function)) ?? .unspecified
      } 
      set {
         // Save the raw value of the new UI style to UserDefaults using the function name as the key.
         set(newValue.rawValue, forKey: #function)
      }
   }
}