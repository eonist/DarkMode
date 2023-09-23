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
   static let xF9EFB1 = #colorLiteral(red: 0.9764705882352941, green: 0.9372549019607843, blue: 0.6941176470588235, alpha: 1) // Light yellow color represented by hex value #F9EFB1
   static let x6A6A6A = #colorLiteral(red: 0.4156862745098039, green: 0.4156862745098039, blue: 0.4156862745098039, alpha: 1) // Gray color represented by hex value #6A6A6A
   static let xFEFEFE = #colorLiteral(red: 0.9960784313725490, green: 0.9960784313725490, blue: 0.9960784313725490, alpha: 1) // Near white color represented by hex value #FEFEFE
   static let x202020 = #colorLiteral(red: 0.1254901960784314, green: 0.1254901960784314, blue: 0.1254901960784314, alpha: 1) // Dark gray color represented by hex value #202020
}
