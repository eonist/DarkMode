import Cocoa

open class View: NSView {
   override open var isFlipped: Bool { true } // TopLeft orientation
   let backgroundColor: NSColor = Theme.Background.tertiary
   override public init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("hello world")
      self.wantsLayer = true // if true then view is layer backed
   }
   override open func draw(_ dirtyRect: NSRect) {
      super.draw(dirtyRect)
      self.layer?.backgroundColor = backgroundColor.cgColor
   }
   /**
    * Boilerplate
    */
   public required init?(coder decoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
