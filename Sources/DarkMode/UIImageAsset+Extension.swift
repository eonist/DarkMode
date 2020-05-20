import UIKit
/**
 * ## Examples:
 * let imageAsset = UIImageAsset(lightModeImage: .init(named: "lightLogo"), darkModeImage: .init(named: "darkLogo"))
 */
extension UIImageAsset {
   /**
    * Creates an image asset with registration of tht eimages with the light and dark trait collections.
    * - Parameters:
    *    - lightModeImage: The image you want to register with the image asset with light user interface style.
    *    - darkModeImage: The image you want to register with the image asset with dark user interface style.
    */
   public convenience init(lightModeImage: UIImage?, darkModeImage: UIImage?) {
      self.init()
      register(lightModeImage: lightModeImage, darkModeImage: darkModeImage)
   }
   /**
    * Register an images with the light and dark trait collections respectively.
    *- Parameters:
    *    - lightModeImage: The image you want to register with the image asset with light user interface style.
    *    - darkModeImage: The image you want to register with the image asset with dark user interface style.
    */
   public func register(lightModeImage: UIImage?, darkModeImage: UIImage?) {
      register(lightModeImage, for: .light)
      register(darkModeImage, for: .dark)
   }
   /**
    * Register an image with the specified trait collection.
    * - Parameters:
    *    - image: The image you want to register with the image asset.
    *    - traitCollection: The traits to associate with image.
    */
   public func register(_ image: UIImage?, for userInterfaceStyle: UIUserInterfaceStyle) {
      guard let image = image else { return }
      register(image, with: .init(userInterfaceStyle: userInterfaceStyle))
   }
   /**
    * Returns the variant of the image that best matches the current trait collection. For early SDKs returns the image for light user interface style.
    */
   public func image() -> UIImage {
      if #available(iOS 13.0, tvOS 13.0, *) {
         image(with: .current)
      }
      return image(with: .init(userInterfaceStyle: .light))
   }
}
