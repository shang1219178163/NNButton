# NNButton

[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/NNButton.svg?style=flat)](https://cocoapods.org/pods/NNButton)
[![Version](https://img.shields.io/cocoapods/v/NNButton.svg?style=flat)](https://cocoapods.org/pods/NNButton)

NSButton 封装, 仿 UIButton
#### NSButton custom, use like iOS'UIButton
![](https://github.com/shang1219178163/NNButton/blob/master/screenshots/screenshots.jpeg?raw=true)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
```
typedef NS_OPTIONS(NSInteger, NNControlState) {
    NNControlStateNormal       = 1 << 0,
    NNControlStateHighlighted  = 1 << 1,
    NNControlStateDisabled     = 1 << 2,
    NNControlStateSelected     = 1 << 3,
    NNControlStateHover        = 1 << 4,
};

typedef NS_ENUM(NSInteger, NNButtonType) {
    NNButtonTypeText = 0,   //just text
    NNButtonType1 = 1,      //backgroud: white , text: blue, has bordColor
    NNButtonType2 = 2,      //backgroud: blue , text: white
};

lazy var btnFive: NNButton = {
    let view = NNButton(type: .typeText)
    view.setTitle("NNButton_typeText", for: .normal)
//        view.isEnabled = false

    view.addTarget(self, action: #selector(handleActionBtn(_:)))
    return view
}()
    
lazy var btnSix: NNButton = {
    let view = NNButton(type: .type1)
    view.setTitle("NNButton_type1", for: .normal)
    view.setTitleColor(NSColor.lightBlue, for: .normal)
//        view.isEnabled = false

    view.addTarget(self, action: #selector(handleActionBtn(_:)))
    return view
}()
    
lazy var btnSeven: NNButton = {
    let view = NNButton(type: .type2)
    view.setTitle("NNButton_type2", for: .normal)
//        view.isEnabled = false

    view.addTarget(self, action: #selector(handleActionBtn(_:)))
    return view
}()
    
lazy var btnEight: NNButton = {
    let view = NNButton(type: .type2)
    view.setTitle("NNButton_disabled", for: .normal)
    view.isEnabled = false

    view.addTarget(self, action: #selector(handleActionBtn(_:)))
    return view
}()
    
@objc func handleActionBtn(_ sender: NNButton) {
//        sender.selected = !sender.selected
//        DDLog("\(sender)_\(sender.selected)_\(sender.isHighlighted)")
    
//        sender.layer?.cornerRadius = sender.selected ? 10 : 0
}
```
## Requirements

    osx: 10.10

## Installation

NNButton is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NNButton'
```

## Author

shang1219178163, shang1219178163@gmail.com

## License

NNButton is available under the MIT license. See the LICENSE file for more info.
