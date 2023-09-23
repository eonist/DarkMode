import Foundation

/**
 * App-color-scheme
 * This file defines the color scheme for the entire application.
 * It includes color definitions for text, buttons, and backgrounds.
 * Each color is defined for both light and dark modes.
 *
 * - Remark: This is used only for internal testing.
 *
 * ## Examples:
 * Theme.Text.header // white in light mode, #FEFEFE in dark mode
 * Theme.UI.Background.secondary // lightGray in light mode, #212121 in dark mode
 */
internal final class Theme {
   // Text color definitions
   struct Text {
      // Title color, light gray in light mode and white in dark mode
      static let title: Color = .init(light: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1), dark: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
      // Header color, #6A6A6A in light mode and #FEFEFE in dark mode
      static let header: Color = .init(light: .x6A6A6A, dark: .init(hex: 0xFEFEFE))
   }
   // Button color definitions
   struct Button {
      // Accessory button color, blue in light mode and dark blue in dark mode
      static let accessory: Color = .init(light: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), dark: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
   }
   // Background color definitions
   struct Background {
      // Primary background color, white in light mode and dark gray in dark mode
      static let primary: Color = .init(light: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), dark: #colorLiteral(red: 0.08450166136, green: 0.08400709182, blue: 0.08488682657, alpha: 1))
      // Secondary background color, light gray in light mode and #212121 in dark mode
      static let secondary: Color = .init(light: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), dark: #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))
      // Tertiary background color, gray in light mode and #424242 in dark mode
      static let tertiary: Color = .init(light: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), dark: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
   }
}