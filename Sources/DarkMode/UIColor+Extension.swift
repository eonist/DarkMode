import UIKit

extension UIColor {
   /**
    * Creates a color object that generates its color data dynamically using the specified colors. For early SDKs creates light color.
    * - Parameters:
    *    - light: The color for light mode
    *    - dark: The color for dark mode
    */
   public convenience init(light: UIColor, dark: UIColor) {
      if #available(iOS 13.0, tvOS 13.0, *) {
         self.init { traitCollection in
            if traitCollection.userInterfaceStyle == .dark {
               return dark
            }
            return light
         }
      }
      else { // Fallback on earlier versions
         self.init(cgColor: light.cgColor)
      }
   }
}
/**
 * Helpers
 */
extension UIColor {
   /**
    * Setup custom colours we can use throughout the app using hex values
    */
   static let youtubeRed = UIColor(hex: 0xf80000)
   static let transparentBlack = UIColor(hex: 0x000000, a: 0.5)
   /**
    * Create a UIColor from RGB
    */
   public convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
      self.init(
         red: CGFloat(red) / 255.0,
         green: CGFloat(green) / 255.0,
         blue: CGFloat(blue) / 255.0,
         alpha: a
      )
   }
   /**
    * Create a UIColor from a hex value (E.g 0x000000)
    */
   public convenience init(hex: Int, a: CGFloat = 1.0) {
      self.init(
         red: (hex >> 16) & 0xFF,
         green: (hex >> 8) & 0xFF,
         blue: hex & 0xFF,
         a: a
      )
   }
}
