//
//  ViewController.swift
//  AAButton
//
//  Created by Bin Shang on 2020/3/23.
//  Copyright © 2020 Bin Shang. All rights reserved.
//

import Cocoa
import CocoaExpand
import NNButton

class ViewController: NSViewController {
    
    lazy var stackView: NSStackView = {
        //创建StackView
        let stackView = NSStackView(frame: self.view.bounds)
        //设置子视图间隔
        stackView.spacing = 30
        //子视图的高度或宽度保持一致
//        stackView.distribution = .fillEqually
        stackView.distribution = .fillProportionally

        return stackView;
    }()
    
    lazy var btnOne: NNButton = {
        let view = NNButton(title: "NNButton", target: nil, action: nil)
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        view.toolTip = "btnOne"

        view.setTitle("normal", for: .normal)
        view.setTitle("disabled", for: .disabled)
        view.setTitle("selected", for: .selected)
        view.setTitle("hover", for: .hover)
        view.setTitle("highlighted", for: .highlighted)

        view.setTitleColor(NSColor.white, for: .normal)
        view.setTitleColor(NSColor.blue, for: .selected)
        view.setTitleColor(NSColor.orange, for: .hover)
        
        view.setBackgroundImage(NSImage.imageWithColor(NSColor.lightBlue), for: .normal)
        view.setBackgroundImage(NSImage.imageWithColor(NSColor.lightGreen), for: .selected)
        view.setBackgroundImage(NSImage.imageWithColor(NSColor.lightOrange), for: .hover)
        
//        view.wantsLayer = true
//        view.layer?.borderColor = NSColor.green.cgColor
//        view.layer?.borderWidth = 1
        view.layer?.cornerRadius = 10
        
        view.addActionHandler({ (control) in
            guard let sender = control as? NNButton else { return }
            sender.selected = !sender.selected
//            sender.isHighlighted = !sender.isHighlighted
            DDLog("\(control)_\(sender.selected)")
        })
        return view
    }()
    
    
    lazy var btnTwo: NNButton = {
        let view = NNButton(title: "disabled", target: nil, action: nil)
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        view.setTitle("normal", for: .normal)
        view.setTitle("disabled", for: .disabled)
        view.setTitle("selected", for: .selected)
        view.setTitle("hover", for: .hover)
        view.setTitle("highlighted", for: .highlighted)

//        view.setTitle("highlighted", for: .highlighted)
//        view.setTitle("highlighted", for: .highlighted)
//        view.setTitle("highlighted", for: .highlighted)
        
        view.wantsLayer = true
        view.layer?.borderColor = view.titleColor.cgColor
        view.layer?.borderWidth = 1
        view.layer?.cornerRadius = 10
        view.isEnabled = false

        view.addTarget(self, action: #selector(handleActionBtn(_:)))
        return view
    }()
    
    
    lazy var btnThree: NNButton = {
        let view = NNButton(title: "normal", target: nil, action: nil)
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        view.setTitle("normal", for: .normal)
        view.setTitle("disabled", for: .disabled)
        view.setTitle("selected", for: .selected)
//        view.setTitle("hover", for: .hover)
//        view.setTitle("highlighted", for: .highlighted)
        
//        view.setTitleColor(NSColor.red, for: .normal)
        view.setTitleColor(NSColor.green, for: .highlighted)

        view.setBackgroundImage(NSImage.imageWithColor(NSColor.white), for: .normal)
//        view.setBackgroundImage(NSImage.imageWithColor(NSColor.lightGreen), for: .selected)
//        view.setBackgroundImage(NSImage.imageWithColor(NSColor.white), for: .hover)
        
        view.wantsLayer = true
        view.layer?.borderColor = view.titleColor.cgColor
        view.layer?.borderWidth = 1
        view.layer?.cornerRadius = 10

        view.addTarget(self, action: #selector(handleActionBtn(_:)))
        return view
    }()

    lazy var btnFour: NNButton = {
        let view = NNButton(title: "normal", target: nil, action: nil)
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        view.setTitle("normal", for: .normal)
//        view.setTitle("disabled", for: .disabled)
//        view.setTitle("selected", for: .selected)
//        view.setTitle("hover", for: .hover)
//        view.setTitle("highlighted", for: .highlighted)
        view.setBackgroundImage(NSImage.imageWithColor(NSColor.lightBlue), for: .normal)

        view.wantsLayer = true
        view.layer?.borderColor = NSColor.green.cgColor
        view.layer?.borderWidth = 1
        view.layer?.cornerRadius = 10
//        view.isEnabled = false

        view.addTarget(self, action: #selector(handleActionBtn(_:)))
        return view
    }()
    
    @objc func handleActionBtn(_ sender: NNButton) {
//        sender.selected = !sender.selected
//        DDLog("\(sender)_\(sender.selected)_\(sender.isHighlighted)")
        
//        sender.layer?.cornerRadius = sender.selected ? 10 : 0
        
        DDLog("\(sender)")

//        if sender.isKind(of: OOButton.classForCoder()) {
//            DDLog("\(sender)")
//        }
    }
    
    // MARK: -lifecycle
    override func loadView() {
        // 设置 ViewController 大小同 mainWindow
        guard let windowRect = NSApplication.shared.mainWindow?.frame else { return }
        view = NSView(frame: windowRect)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.wantsLayer = true;
        view.layer!.backgroundColor = NSColor.white.cgColor;
        
        
        stackView.addArrangedSubview(btnOne)
        stackView.addArrangedSubview(btnTwo)
        stackView.addArrangedSubview(btnThree)
        stackView.addArrangedSubview(btnFour)

        view.addSubview(stackView)
        
        print(view.subviews)
    }

    override func viewDidLayout() {
        super.viewDidLayout()
        
        stackView.frame = CGRect(x: 20,
                                 y: 20,
                                 width: view.frame.width - 40,
                                 height: 50)
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

