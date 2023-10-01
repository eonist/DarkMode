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
            Swift.print("switch mode") // prints "switch mode" to the console
            let mode: UIUserInterfaceStyle = self.isDarkMode ? .light : .dark // sets the mode to light if isDarkMode is true, otherwise sets it to dark
            UIApplication.shared.override(mode) // overrides the user interface style of the application with the selected mode
            Swift.print("UserDefaults.standard.overridedUserInterfaceStyle:  \(UserDefaults.standard.overridedUserInterfaceStyle.rawValue)") // prints the current overridden user interface style to the console
            UserDefaults.standard.overridedUserInterfaceStyle = mode // stores the selected mode in UserDefaults for future use
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
