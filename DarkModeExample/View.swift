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
class View: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
//      let color: UIColor = DynamicColor().with(light: .white, dark: .black)
//      Swift.print("color.light:  \(String(describing: (color as? DynamicColor)?.light))")
//      Swift.print("color.dark:  \(String(describing: (color as? DynamicColor)?.dark))")
//      let resolvedColor: UIColor = color.resolved
//      Swift.print("UIColor.green.resolved:  \(UIColor.green.resolved)")
//      Swift.print("resolvedColor:  \(resolvedColor.cgColor)")
//      let colorTwo: UIColor = DynamicColor().with(light: #colorLiteral(red: 0.9764705882352941, green: 0.9372549019607843, blue: 0.6941176470588235, alpha: 1), dark: .x6A6A6A)
//      Swift.print("colorTwo.resolved:  \(colorTwo.resolved)")
      self.backgroundColor = DynamicColor().with(light: #colorLiteral(red: 0.9764705882352941, green: 0.9372549019607843, blue: 0.6941176470588235, alpha: 1), dark: .init(hex: 0x000000)).resolved
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
// - Fixme: ⚠️️ add theme struct to show how DynamicColor works
// - Fixme: ⚠️️ cleanup
// - Doc
// make public
