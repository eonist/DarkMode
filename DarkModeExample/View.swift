import UIKit

class View: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
