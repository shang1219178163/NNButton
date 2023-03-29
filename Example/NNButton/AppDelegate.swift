//
//  AppDelegate.swift
//  NNButton
//
//  Created by shang1219178163 on 03/23/2020.
//  Copyright (c) 2020 shang1219178163. All rights reserved.
//

import Cocoa
import AppKit
import SwiftExpand

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
//    lazy var window: NSWindow = {
//        let window = NSApplication.windowDefault
//        window.contentMinSize = CGSize(width: kScreenWidth*0.5, height: kScreenHeight*0.5)
//        return window
//    }()

    lazy var window: NSWindow = {
        let window = NSWindow(contentRect: NSMakeRect(0, 0, kScreenWidth*0.5, kScreenHeight*0.5),
                        styleMask: [.titled, .resizable, .miniaturizable, .closable, .fullSizeContentView],
                        backing: .buffered,
                        defer: false)
        // 设置最小尺寸
        window.minSize = window.frame.size
        // 打开显示在屏幕的中心位置
        window.center()

        return window
    }()

    // MARK: -life cycle
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        window.makeKeyAndOrderFront(nil)
        NSApplication.shared.mainWindow?.title = "NSButton封装, 仿UIButton"

        // 设置 contentViewController
        let contentViewController = ViewController() // or ViewController(nibName:nil, bundle: nil)
        window.contentViewController = contentViewController
        
        window.makeKeyAndOrderFront(self)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if flag == false {
            window.makeKeyAndOrderFront(self)
            return true
        }
        return false;
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
    }

}

