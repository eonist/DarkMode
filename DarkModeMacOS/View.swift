import Cocoa

open class View: NSView {
   override open var isFlipped: Bool { true }/*TopLeft orientation*/
   override public init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("hello world")
      self.wantsLayer = true/*if true then view is layer backed*/
//      NSColor.init(hex: )
      self.layer?.backgroundColor = Theme.Background.tertiary.cgColor
//      Swift.print("Theme.Background.primary:  \(Theme.Background.primary)")
   }
   /**
    * Boilerplate
    */
   public required init?(coder decoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
