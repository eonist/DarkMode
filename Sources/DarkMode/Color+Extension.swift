import Foundation
import QuartzCore

extension Color {
   /**
    * Creates a color object that generates its color data dynamically using the specified colors. For early SDKs, a light color is created.
    * - Note: New colors are created from `CGColor` to avoid potential strong reference bugs.
    * - Parameters:
    *    - light: The color to be used in light-mode
    *    - dark: The color to be used in dark-mode
    */
   public convenience init(light: Color, dark: Color) {
      #if os(macOS)
         if #available(macOS 10.15, *) {
            // For macOS 10.15 and later, the color is determined based on the current appearance mode
            self.init(name: nil) { _ in
               Apperance().inDarkMode ? dark : light
            }
         } else {
            // For earlier versions of macOS, light color is used as a fallback
            self.init(cgColor: light.cgColor)!
         }
      #else
      if #available(iOS 13.0, tvOS 13.0, *) {
         // For iOS 13.0 and tvOS 13.0 and later, the color is determined based on the user interface style
         self.init { traitCollection in
            traitCollection.userInterfaceStyle == .dark ? dark : light
         }
      } else {
         // For earlier versions, light color is used as a fallback
         self.init(cgColor: light.cgColor)
      }
      #endif
   }
}
/**
 * Helper extensions for Color
 */
extension Color {
   /**
    * Setup custom colors we can use throughout the app using hex values
    */
   internal static let youtubeRed = Color(hex: 0xf80000)
   /**
    * Creates a static instance of the Color struct representing a semi-transparent black color.
    * - Parameters:
    *    - hex: The hex value of the color.
    *    - a: The alpha value of the color.
    *
    * - Returns: A semi-transparent black color with the specified hex and alpha values.
    */
   internal static let transparentBlack = Color(hex: 0x000000, a: 0.5)
   /**
    * Create a UIColor from RGB
    * - Parameters:
    *   - red: Red component (0-255)
    *   - green: Green component (0-255)
    *   - blue: Blue component (0-255)
    *   - a: Alpha component (0-1)
    */
   public convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
      self.init(red: .init(red) / 255.0, green: .init(green) / 255.0, blue: .init(blue) / 255.0, alpha: a)
   }
   /**
    * Create a UIColor from a hex value (E.g 0x000000)
    * - Parameters:
    *   - hex: Hexadecimal color value
    *   - a: Alpha component (0-1)
    */
   public convenience init(hex: Int, a: CGFloat = 1.0) {
      self.init( red: (hex >> 16) & 0xFF, green: (hex >> 8) & 0xFF, blue: hex & 0xFF, a: a)
   }
}
