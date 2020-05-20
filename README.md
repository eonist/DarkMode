# DarkMode

> 🔦 DarkMode made simple

### Install
- SPM: `.package(url: "https://github.com/passbook/Darkmode.git", .branch("master"))`

### Example

```swift
struct Theme {
   struct Text {
      static let title: UIColor = .init(light: .green, dark: .blue)
   }
   struct Background {
      static let primary: UIColor = .init(light: .red, dark: .yellow)
   }
}
class View: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
      self.backgroundColor = Theme.Background.primary
      UIApplication.shared.override(.dark) // changes colors to dark-mode
      UIApplication.shared.override(.light) // changes colors to light-mode
   }
}
```
