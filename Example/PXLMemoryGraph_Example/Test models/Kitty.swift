//
//  Kitty.swift
//  PXLMemoryGraph_Example
//
//  Created by chiwei.feng@pixocial.com on13.10.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

import Foundation

@objc public class Kitty: NSObject, Animal {
    public var name: String {
        return "Tom"
    }
    private var container: SwiftContainer?
    
    init(container: SwiftContainer) {
        self.container = container
    }
    
    override init() {
        
    }
}
