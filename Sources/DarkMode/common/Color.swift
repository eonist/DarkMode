import Foundation
#if os(iOS)
import UIKit

// Define a type alias for UIColor on iOS platform
public typealias Color = UIColor
#elseif os(macOS)
import Cocoa
// Define a type alias for NSColor on macOS platform
public typealias Color = NSColor
#endif

#if os(macOS)
import AppKit.NSColor

// Extend NSColor to add a convenience initializer
extension NSColor {
   /**
    * A convenience method to create an NSColor instance from RGB and alpha values.
    * - Parameters:
    *   - red: The red component of the color. Accepts a CGFloat between 0 and 1.
    *   - green: The green component of the color. Accepts a CGFloat between 0 and 1.
    *   - blue: The blue component of the color. Accepts a CGFloat between 0 and 1.
    *   - alpha: The opacity of the color. Accepts a CGFloat between 0 and 1.
    */
   public convenience init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
      // Initialize the color using sRGB color space
      self.init(srgbRed: red, green: green, blue: blue, alpha: alpha)
   }
}
#endif