//
//  ViewController.swift
//  NewProjectNative
//
//  Created by PT Phincon on 24/08/23.
//

import UIKit
import React

class ViewController: UIViewController {
    var bridge: RCTBridge?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTapBtn(_ sender: Any) {
        let dict: [String: String] = ["a": "HALO"]
        bridge = RCTBridge.init(delegate: self, launchOptions: nil)
        guard let bridge = bridge else { return }
        let rootView: RCTRootView = RCTRootView(
            bridge: bridge,
            moduleName: "NewProject",
            initialProperties: dict)
        let reactNativeVC = UIViewController()
        reactNativeVC.view = rootView
        self.navigationController?.pushViewController(reactNativeVC, animated: true)
    }
    
}

extension UIViewController: RCTBridgeDelegate {
    
    public func sourceURL(for bridge: RCTBridge!) -> URL! {
        return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
    }
    
}
