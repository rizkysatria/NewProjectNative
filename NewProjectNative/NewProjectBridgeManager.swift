//
//  NewProjectBridgeManager.swift
//  NewProjectNative
//
//  Created by PT Phincon on 24/08/23.
//

import Foundation

@objc(NewProjectBridgeManager)
class NewProjectBridgeManager: NSObject {
    
    @objc(updateTitle:)
    func updateTitle(_ newTitle: String) {
        print(newTitle)
    }
    
    @objc
    func test() {
        print("dfsd")
    }
    
}
