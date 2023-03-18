![mit](https://img.shields.io/badge/License-MIT-brightgreen.svg)
![platform](https://img.shields.io/badge/Platform-iOS/macOS-blue.svg)
![Lang](https://img.shields.io/badge/Language-Swift%205-orange.svg)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
[![Tests](https://github.com/sentryco/DarkMode/actions/workflows/Tests.yml/badge.svg)](https://github.com/sentryco/DarkMode/actions/workflows/Tests.yml)
[![codebeat badge](https://codebeat.co/badges/0029bc5e-100c-4f55-9705-b289e0f8e0c9)](https://codebeat.co/projects/github-com-sentryco-darkmode-master)

# DarkMode

> 🔦 DarkMode made simple

### Install
- SPM: `.package(url: "https://github.com/sentryco/Darkmode.git", .branch("master"))`

### Example (iOS)

```swift
struct Theme {
   struct Text {
      static let title: Color = .init(light: .green, dark: .blue)
   }
   struct Background {
      static let primary: Color = .init(light: .red, dark: .yellow)
   }
}
class View: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
      self.backgroundColor = Theme.Background.primary
      // Programatically change dark / light mode (this can also be done in prefs)
      // UIApplication.shared.override(.dark) // changes colors to dark-mode
      // UIApplication.shared.override(.light) // changes colors to light-mode
   }
}
```

### Example (macOS)

```swift
class View: NSView {
   override public init(frame: CGRect) {
      super.init(frame: frame)
      self.wantsLayer = true // if true then view is layer backed
      self.layer?.backgroundColor = Theme.Background.primary.cgColor // since cgColor is not dynamic, place this code in the draw, or layout method to make it react to OS appearance change
   }
}
```

### Nice way to organize a theme that has  support for dark and light mode:

```swift
/**
 * App-color-scheme
 * ## Examples:
 * Theme.Text.header // white
 * Theme.Background.secondary // lightGray
 */
internal class Theme {
   struct Text {
      static let title: Color = .init(light: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1), dark: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
      static let header: Color = .init(light: .x6A6A6A, dark: .init(hex: 0xFEFEFE))
   }
   struct Button {
      static let accessory: Color = .init(light: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), dark: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
   }
   struct Background {
      static let primary: Color = .init(light: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), dark: #colorLiteral(red: 0.08450166136, green: 0.08400709182, blue: 0.08488682657, alpha: 1))
      static let secondary: Color = .init(light: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), dark: #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))
      static let tertiary: Color = .init(light: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), dark: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
   }
}
```

### Nice way to organize colors:

```swift
/**
 * Nice way to organize colors, hex + visual
 * - Note: Only for internal testing
 */
extension Color {
   static let xF9EFB1 = #colorLiteral(red: 0.9764705882352941, green: 0.9372549019607843, blue: 0.6941176470588235, alpha: 1)
   static let x6A6A6A = #colorLiteral(red: 0.4156862745098039, green: 0.4156862745098039, blue: 0.4156862745098039, alpha: 1)
   static let xFEFEFE = #colorLiteral(red: 0.9960784313725490, green: 0.9960784313725490, blue: 0.9960784313725490, alpha: 1)
   static let x202020 = #colorLiteral(red: 0.1254901960784314, green: 0.1254901960784314, blue: 0.1254901960784314, alpha: 1)
}
```
