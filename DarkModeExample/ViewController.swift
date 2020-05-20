import UIKit

class ViewController: UIViewController {
   override var prefersStatusBarHidden: Bool { false }
}
/**
 * Extension
 */
extension ViewController {
   /**
    * On view load
    */
   override func viewDidLoad() {
      super.viewDidLoad()
      view = View()
      // Switch to darkmode after 3 seconds
      DispatchQueue.global(qos: .background).async { // asyncAfter also works here, instead of sleep
         sleep(3)
         DispatchQueue.main.async {
            self.overrideUserInterfaceStyle = .dark
         }
      }
   }
   /**
    * Detect darkode switches
    */
   override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
      super.traitCollectionDidChange(previousTraitCollection)
      if #available(iOS 13.0, *) {
         if self.traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            if traitCollection.userInterfaceStyle == .dark {
               // Dark
               Swift.print("Go to Dark \(self.isDarkMode)")
            } else {
               Swift.print("Go to Light \(self.isDarkMode)")
            }
         }
      } else {
         // Fallback on earlier versions
      }
   }
}
