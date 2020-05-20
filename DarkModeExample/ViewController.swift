import UIKit

class ViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      view = View()
      DispatchQueue.global(qos: .background).async { // asyncAfter also works here, instead of sleep
         sleep(4)
         DispatchQueue.main.async {
            self.overrideUserInterfaceStyle = .dark
         }
      }
   }
   override var prefersStatusBarHidden: Bool { return false }
}
/**
 * Extension
 */
extension ViewController {
   /**
    * Detect darkode switches
    */
   override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
      super.traitCollectionDidChange(previousTraitCollection)
      if #available(iOS 13.0, *) {
         if self.traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            if traitCollection.userInterfaceStyle == .dark {
               // Dark
               Swift.print("Dark")
            } else {
               Swift.print("Light")
            }
         }
      } else {
         // Fallback on earlier versions
      }
   }
}
