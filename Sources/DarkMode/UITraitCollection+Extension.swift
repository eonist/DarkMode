import UIKit

extension UITraitCollection {
   /**
    * A trait collection containing only the light user interface style trait.
    */
   public static let light: UITraitCollection = .init(userInterfaceStyle: .light)
   /**
    * A trait collection containing only the dark user interface style trait.
    */
   public static let dark: UITraitCollection = .init(userInterfaceStyle: .dark)
   /**
    * Calls the passed closure only if iOS 13 or tvOS 13 SDKs are available.
    * - Parameters:
    *    - traitCollection: A trait collection that you want to compare to the current trait collection.
    *    - closure: The closure for updating component appearance.
    */
   public func performForDifferentColorAppearance(comparedTo traitCollection: UITraitCollection?, closure: (() -> Void)) {
      if #available(iOS 13.0, tvOS 13.0, *), hasDifferentColorAppearance(comparedTo: traitCollection) {
         closure()
      }
   }
}
