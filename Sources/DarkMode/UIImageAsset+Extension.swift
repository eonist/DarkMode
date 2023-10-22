#if os(iOS)
import UIKit

/**
 * This UIImageAsset extension provides convenience methods for registering and retrieving images based on user interface style.
 * It simplifies the process of managing different images for light and dark modes.
 * ## Usage:
 * let imageAsset = UIImageAsset(lightModeImage: UIImage(named: "lightLogo"), darkModeImage: UIImage(named: "darkLogo"))
 */
extension UIImageAsset {
   /**
    * Convenience initializer for creating an image asset and registering images for light and dark user interface styles.
    * - Parameters:
    *    - lightModeImage: The image to be used in light user interface style.
    *    - darkModeImage: The image to be used in dark user interface style.
    */
   public convenience init(lightModeImage: UIImage?, darkModeImage: UIImage?) {
      self.init() // Initialize a new instance of UIImageAsset
      register(
         lightModeImage: lightModeImage, // The image to use in light mode
         darkModeImage: darkModeImage // The image to use in dark mode
      ) // Register the light mode image and dark mode image for the UIImageAsset instance
   }
   /**
    * Method to register images for light and dark user interface styles.
    * - Parameters:
    *    - lightModeImage: The image to be used in light user interface style.
    *    - darkModeImage: The image to be used in dark user interface style.
    */
   public func register(lightModeImage: UIImage?, darkModeImage: UIImage?) {
      register(lightModeImage, for: .light) // Register the light mode image for the .light appearance option
      register(darkModeImage, for: .dark) // Register the dark mode image for the .dark appearance option
   }
   /**
    * Method to register an image for a specific user interface style.
    * - Parameters:
    *    - image: The image to be registered with the image asset.
    *    - traitCollection: The user interface style to associate with the image.
    */
   public func register(_ image: UIImage?, for userInterfaceStyle: UIUserInterfaceStyle) {
      guard let image = image else { return } // Check if the image is not nil, otherwise return
      register(image, with: UITraitCollection(userInterfaceStyle: userInterfaceStyle)) // Register the image with the specified user interface style
   }
   /**
    * Method to retrieve the image variant that best matches the current trait collection. 
    * For early SDKs, it returns the image for light user interface style.
    */
   public func image() -> UIImage {
      if #available(iOS 13.0, tvOS 13.0, *) { // Check if the device is running iOS 13 or tvOS 13 or later
         return image(with: UITraitCollection.current) // Return the image for the current trait collection
      } else { // If the device is running an earlier version of iOS or tvOS
         return image(with: UITraitCollection(userInterfaceStyle: .light)) // Return the image for the light user interface style
      }
   }
}
#endif
