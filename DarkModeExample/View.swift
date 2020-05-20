import UIKit

class View: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
      let color: DynamicColor = DynamicColor().with(light: .red, dark: .black)
      Swift.print("color.light:  \(color.light)")
      Swift.print("color.dark:  \(color.dark)")
      let resolvedColor: UIColor = color.resolved
      Swift.print("resolvedColor:  \(resolvedColor.cgColor)")
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
