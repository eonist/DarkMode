# DarkMode

> 🔦 DarkMode made simple

### Install
- SPM: .package(url: "https://github.com/passbook/Darkmode.git", .branch("master"))

### Example

```swift
class Theme {
   struct Text {
      static let title: UIColor = DynamicColor().with(light: .green, dark: .blue)
   }
   struct Background {
      static let primary: UIColor = DynamicColor().with(light: .red, dark: .yellow)
   }
}
class View: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
      self.backgroundColor = Theme.Background.primary.resolved
      self.overrideUserInterfaceStyle = .dark // changes theme to dark, color is updated 👌
      self.overrideUserInterfaceStyle = .light // changes theme to light, color is updated 👌
   }
```
