#if os(iOS)
import UIKit
#elseif os(macOS)
import Cocoa
#endif
/**
 * This extension provides a convenient way to organize colors using hex values and visual literals.
 * - Remark: This is intended for internal testing only.
 */
extension Color {
   /**
    * Represents a light yellow color with hex value #F9EFB1.
    */
   static let xF9EFB1 = #colorLiteral(
      red: 0.9764705882352941, // red component
      green: 0.9372549019607843, // green component
      blue: 0.6941176470588235, // blue component
      alpha: 1 // alpha component
   )
   /**
    * Represents a gray color with hex value #6A6A6A.
    */
   static let x6A6A6A = #colorLiteral(
      red: 0.4156862745098039, // red component
      green: 0.4156862745098039, // green component
      blue: 0.4156862745098039, // blue component
      alpha: 1 // alpha component
   )
   /**
    * Represents a near white color with hex value #FEFEFE.
    */
   static let xFEFEFE = #colorLiteral(
      red: 0.9960784313725490, // red component
      green: 0.9960784313725490, // green component
      blue: 0.9960784313725490, // blue component
      alpha: 1 // alpha component
   )

   /**
    * Represents a dark gray color with hex value #202020.
    */
   static let x202020 = #colorLiteral(
      red: 0.1254901960784314, // red component
      green: 0.1254901960784314, // green component
      blue: 0.1254901960784314, // blue component
      alpha: 1 // alpha component
   )
}
