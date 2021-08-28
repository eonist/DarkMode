import Foundation
import QuartzCore

extension Color {
   /**
    * Creates a color object that generates its color data dynamically using the specified colors. For early SDKs creates light color.
    * - Fixme: ⚠️️ Why are we creating new colors from `CGColor`? I guess to aboid some strong reference bug etc?
    * - Parameters:
    *    - light: The color for light-mode
    *    - dark: The color for dark-mode
    */
   public convenience init(light: Color, dark: Color) {
      #if os(macOS)
         if #available(macOS 10.15, *) {
            self.init(name: nil) { _ in // $0.name which gives: .darkAqua, .vibrantDark, .accessibilityHighContrastDarkAqua, .accessibilityHighContrastVibrantDark etc
               Apperance().inDarkMode ? dark : light
            }
         } else {
            self.init(cgColor: light.cgColor)!  // Fallback on earlier versions
         }
      #else
      if #available(iOS 13.0, tvOS 13.0, *) {
         self.init { traitCollection in
            traitCollection.userInterfaceStyle == .dark ? dark : light
         }
      } else {
         Swift.print("Fallback on earlier versions")
         self.init(cgColor: light.cgColor) // Fallback on earlier versions
      }
      #endif
   }
}
/**
 * Helpers
 */
extension Color {
   /**
    * Setup custom colors we can use throughout the app using hex values
    */
   static let youtubeRed = Color(hex: 0xf80000)
   static let transparentBlack = Color(hex: 0x000000, a: 0.5)
   /**
    * Create a UIColor from RGB
    * - Parameters:
    *   - red: 0-255
    *   - green: - 0-255
    *   - blue: 0-255
    *   - a: 0-1
    */
   public convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
      self.init(red: .init(red) / 255.0, green: .init(green) / 255.0, blue: .init(blue) / 255.0, alpha: a)
   }
   /**
    * Create a UIColor from a hex value (E.g 0x000000)
    * - Parameters:
    *   - hex: 0x000000
    *   - a: 0-1
    */
   public convenience init(hex: Int, a: CGFloat = 1.0) {
      self.init( red: (hex >> 16) & 0xFF, green: (hex >> 8) & 0xFF, blue: hex & 0xFF, a: a)
   }
}
