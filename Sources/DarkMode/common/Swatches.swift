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
   static let xF9EFB1: Color = #colorLiteral(
      red: 0.976_470_588_235_294_1, // red component
      green: 0.937_254_901_960_784_3, // green component
      blue: 0.694_117_647_058_823_5, // blue component
      alpha: 1 // alpha component
   )
   /**
    * Represents a gray color with hex value #6A6A6A.
    */
   static let x6A6A6A: Color = #colorLiteral(
      red: 0.415_686_274_509_803_9, // red component
      green: 0.415_686_274_509_803_9, // green component
      blue: 0.415_686_274_509_803_9, // blue component
      alpha: 1 // alpha component
   )
   /**
    * Represents a near white color with hex value #FEFEFE.
    */
   static let xFEFEFE: Color = #colorLiteral(
      red: 0.996_078_431_372_549_0, // red component
      green: 0.996_078_431_372_549_0, // green component
      blue: 0.996_078_431_372_549_0, // blue component
      alpha: 1 // alpha component
   )
   /**
    * Represents a dark gray color with hex value #202020.
    */
   static let x202020: Color = #colorLiteral(
      red: 0.125_490_196_078_431_4, // red component
      green: 0.125_490_196_078_431_4, // green component
      blue: 0.125_490_196_078_431_4, // blue component
      alpha: 1 // alpha component
   )
}
