import Foundation
/**
 * App-color-scheme
 * - Note: only for internal testing
 * ## Examples:
 * Color.Text.header // white
 * Color.UI.Background.secondary // lightGray
 * - Fixme: ⚠️️ maybe even extend UIColor? .Text.title etc
 */
internal class Theme {
   struct Text {
      static let title: Color = .init(light: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1), dark: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
      static let header: Color = .init(light: .x6A6A6A, dark: .init(hex: 0xFEFEFE))
   }
   struct Button {
      static let accessory: Color = .init(light: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), dark: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
   }
   struct Background {
      static let primary: Color = .init(light: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), dark: #colorLiteral(red: 0.08450166136, green: 0.08400709182, blue: 0.08488682657, alpha: 1))
      static let secondary: Color = .init(light: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), dark: #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))
      static let tertiary: Color = .init(light: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), dark: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
   }
}
