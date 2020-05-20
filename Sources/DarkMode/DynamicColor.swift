import UIKit
/**
 * The purpouse is to create a dynamic reactive color that reacts to OS changes
 * ## Examples:
 * UIView().backgroundColor =  DynamicColor().with(light: .white, dark: .black).resolved
 * static let primaryTextColor = DynamicColor(light: .systemGreen, dark: .systemOrange)
 * UIView().backgroundColor = primaryTextColor.resolved
 * UIView().backgroundColor = UIColor.green.resolved // green
 * - Fixme: ⚠️️ Rename to DarkModeColor ?
 * - The point is that you can use normal UIColor and DynamicColor
 * - Note: https://stackoverflow.com/questions/57494528/crash-when-setting-property-in-uicolor-subclass
 */
class DynamicColor: UIColor {
   var dark: UIColor = .clear
   var light: UIColor = .clear
   /**
    * - Note: For some reason UIColor wont allow you to add variables to a subclass with regular init, the bellow is the only way
    */
   func with(light: UIColor, dark: UIColor) -> DynamicColor {
      self.dark = dark
      self.light = light
      return self
   }
}
/**
 * UIColor helper
 */
extension UIColor {
   /**
    * - Fixme: ⚠️️  or maybe use where self == ...?
    */
   var resolved: UIColor {
      // if self == Dynamic else return self,
      if let dynamicColor = self as? DynamicColor {
         return DynamicColor.dynamicResolved(color: dynamicColor)
      } else {
         return self
      }
   }
}
/**
 * Internal extension helper for DynamicColor
 */
extension DynamicColor {
   /**
    * Toggle color based on current OS dark mode
    */
   static func dynamicResolved(color: DynamicColor) -> UIColor {
      if #available(iOS 13.0, *) {
         return UIColor.init { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
               return color.dark
            } else {
               return color.light
            }
         }
      } else { // Fallback on earlier versions
         return color.light
      }
   }
}
