//
//  SwiftContainer.swift
//  PXLMemoryGraph_Example
//
//  Created by chiwei.feng@pixocial.com on13.10.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

import Foundation

@objcMembers
public final class SwiftContainer: NSObject {
    public let animals: [Animal] = [Dog(), Kitty()]
    private var pKitty: Kitty?
    
    public override init() {
        super.init()
        pKitty = Kitty(container: self)
    }
}
