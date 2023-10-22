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
      /**
       * Represents the title color, light gray in light mode and white in dark mode.
       */
      static let title: Color = .init(
         light: #colorLiteral( // The color of the title in light mode
            red: 0.2605174184, // The color red component of the title in light mode
            green: 0.2605243921, // The color green component of the title in light mode
            blue: 0.260520637, // The color blue component of the title in light mode
            alpha: 1 // The alpha value of the title in light mode
         ),
         dark: #colorLiteral( // The color of the title in dark mode
            red: 0.8039215803, // The color red component of the title in dark mode
            green: 0.8039215803, // The color green component of the title in dark mode
            blue: 0.8039215803, // The color blue component of the title in dark mode
            alpha: 1 // The alpha value of the title in dark mode
         )
      )
      /**
       * Represents the header color, gray in light mode and near white in dark mode.
       */
      static let header: Color = .init(
         light: .x6A6A6A, // The color of the header in light mode
         dark: .init(hex: 0xFEFEFE) // The color of the header in dark mode
      )
   }
   // Button color definitions
   struct Button {
      /**
       * Represents the accessory button color, blue in light mode and dark blue in dark mode.
       */
      static let accessory: Color = .init(
         light: #colorLiteral(
            red: 0.1764705926, // The color red component of the accessory color in light mode
            green: 0.4980392158, // The color green component of the accessory color in light mode
            blue: 0.7568627596, // The color blue component of the accessory color in light mode
            alpha: 1 // The alpha value of the accessory color in light mode
         ),
         dark: #colorLiteral(
            red: 0.1019607857, // The color red component of the accessory color in dark mode
            green: 0.2784313858, // The color green component of the accessory color in dark mode
            blue: 0.400000006, // The color blue component of the accessory color in dark mode
            alpha: 1 // The alpha value of the accessory color in dark mode
         )
      )
   }
   // Background color definitions
   struct Background {
      /**
       * Represents the primary background color, white in light mode and dark gray in dark mode.
       */
      static let primary: Color = .init(
         light: #colorLiteral(
            red: 1.0, // The color red component of the primary color in light mode
            green: 1.0, // The color green component of the primary color in light mode
            blue: 1.0, // The color blue component of the primary color in light mode
            alpha: 1.0 // The alpha value of the primary color in light mode
         ),
         dark: #colorLiteral(
            red: 0.08450166136, // The color red component of the primary color in dark mode
            green: 0.08400709182, // The color green component of the primary color in dark mode
            blue: 0.08488682657, // The color blue component of the primary color in dark mode
            alpha: 1 // The alpha value of the primary color in dark mode
         )
      )
      /**
       * Represents the secondary background color, light gray in light mode and #212121 in dark mode.
       */
      static let secondary: Color = .init(
         light: #colorLiteral(
            red: 0.8039215803, // The color red component of the secondary color in light mode
            green: 0.8039215803, // The color green component of the secondary color in light mode
            blue: 0.8039215803, // The color blue component of the secondary color in light mode
            alpha: 1 // The alpha value of the secondary color in light mode
         ),
         dark: #colorLiteral(
            red: 0.1298420429, // The color red component of the secondary color in dark mode
            green: 0.1298461258, // The color green component of the secondary color in dark mode
            blue: 0.1298439503, // The color blue component of the secondary color in dark mode
            alpha: 1 // The alpha value of the secondary color in dark mode
         )
      )
      /**
       * Represents the tertiary background color, gray in light mode and #424242 in dark mode.
       */
      static let tertiary: Color = .init(
         light: #colorLiteral(
            red: 0.6, // The color red component of the tertiary color in light mode
            green: 0.6, // The color green component of the tertiary color in light mode
            blue: 0.6, // The color blue component of the tertiary color in light mode
            alpha: 1 // The alpha value of the tertiary color in light mode
         ),
         dark: #colorLiteral(
            red: 0.2605174184, // The color red component of the tertiary color in dark mode
            green: 0.2605243921, // The color green component of the tertiary color in dark mode
            blue: 0.260520637, // The color blue component of the tertiary color in dark mode
            alpha: 1 // The alpha value of the tertiary color in dark mode
         )
      )
   }
}
