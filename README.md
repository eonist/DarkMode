![mit](https://img.shields.io/badge/License-MIT-brightgreen.svg)
![platform](https://img.shields.io/badge/Platform-iOS/macOS-blue.svg)
![Lang](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
[![codebeat badge](https://codebeat.co/badges/8f2b22f6-5d86-4a87-8d32-dec32aefe148)](https://codebeat.co/projects/github-com-passbook-darkmode-master-be641bda-d00f-4173-9d84-efc93700de42)

# DarkMode

> 🔦 DarkMode made simple

### Install
- SPM: `.package(url: "https://github.com/passbook/Darkmode.git", .branch("master"))`

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
      UIApplication.shared.override(.dark) // changes colors to dark-mode
      UIApplication.shared.override(.light) // changes colors to light-mode
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
