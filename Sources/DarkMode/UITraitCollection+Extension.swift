#if os(iOS)
import UIKit

extension UITraitCollection {
   /**
    * This trait collection represents the light user interface style.
    * It can be used to apply light-themed styles to your UI components.
    */
   public static let light: UITraitCollection = .init(userInterfaceStyle: .light)
   
   /**
    * This trait collection represents the dark user interface style.
    * It can be used to apply dark-themed styles to your UI components.
    */
   public static let dark: UITraitCollection = .init(userInterfaceStyle: .dark)
   
   /**
    * Executes the provided closure if the current trait collection differs from the provided one in terms of color appearance.
    * This method is only available on iOS 13 or tvOS 13 and later.
    * 
    * - Parameters:
    *    - traitCollection: The trait collection to compare with the current one.
    *    - closure: A closure that gets executed if the color appearances of the current and provided trait collections differ.
    */
   public func performForDifferentColorAppearance(comparedTo traitCollection: UITraitCollection?, closure: (() -> Void)) {
      if #available(iOS 13.0, tvOS 13.0, *), hasDifferentColorAppearance(comparedTo: traitCollection) {
         closure()
      }
   }
}
#endif