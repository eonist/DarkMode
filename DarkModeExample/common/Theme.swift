import UIKit
/**
 * Nice way to organize colors, hex + visual
 */
extension UIColor {
   static let xF9EFB1 = #colorLiteral(red: 0.9764705882352941, green: 0.9372549019607843, blue: 0.6941176470588235, alpha: 1)
   static let x6A6A6A = #colorLiteral(red: 0.4156862745098039, green: 0.4156862745098039, blue: 0.4156862745098039, alpha: 1)
   static let xFEFEFE = #colorLiteral(red: 0.9960784313725490, green: 0.9960784313725490, blue: 0.9960784313725490, alpha: 1)
   static let x202020 = #colorLiteral(red: 0.1254901960784314, green: 0.1254901960784314, blue: 0.1254901960784314, alpha: 1)
}
/**
 * App-color-scheme
 * ## Examples:
 * Color.Text.header // white
 * Color.UI.Background.secondary // lightGray
 * - Fixme: ⚠️️ maybe even extend UIColor? .Text.title etc
 */
class Theme {
   struct Text {
      static let title: UIColor = DynamicColor().with(light: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1), dark: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
      static let header: UIColor = DynamicColor().with(light: .x6A6A6A, dark: .init(hex: 0xFEFEFE))
   }
   struct Button {
      static let accessory: UIColor = DynamicColor().with(light: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), dark: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
   }
   struct Background {
      static let primary: UIColor = DynamicColor().with(light: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), dark: #colorLiteral(red: 0.08450166136, green: 0.08400709182, blue: 0.08488682657, alpha: 1))
      static let secondary: UIColor = DynamicColor().with(light: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), dark: #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))
      static let tertiary: UIColor = DynamicColor().with(light: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), dark: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
   }
}
