import UIKit

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
      self.backgroundColor = Theme.Background.primary
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
