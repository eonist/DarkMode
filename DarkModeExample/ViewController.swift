import UIKit

class ViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      view = View()
      view.backgroundColor = .orange
   }
   override var prefersStatusBarHidden: Bool { return false }
}
