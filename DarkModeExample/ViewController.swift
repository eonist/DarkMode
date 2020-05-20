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
            Swift.print("switch mode")
            let mode: UIUserInterfaceStyle = self.isDarkMode ? .light : .dark
            UIApplication.shared.override(mode)
            Swift.print("UserDefaults.standard.overridedUserInterfaceStyle:  \(UserDefaults.standard.overridedUserInterfaceStyle.rawValue)")
            UserDefaults.standard.overridedUserInterfaceStyle = mode // store in userdef
         }
      }
   }
   /**
    * Detect darkmode switches
    */
   override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
      super.traitCollectionDidChange(previousTraitCollection)
      traitCollection.performForDifferentColorAppearance(comparedTo: previousTraitCollection) {
         // update related colors
         Swift.print("Change dark/light-mode \(self.isDarkMode)")
      }
      Swift.print("fallback on earlier versions")
   }
}
