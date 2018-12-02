//
//  ScriptProtocl.swift
//  AS-Swift
//
//  Created by Mark Lively on 11/27/18.
//  Copyright © 2018 Mark Lively. All rights reserved.
//

import Foundation

@objc(NSObject) protocol MyScript {
    func testNoParam()
    func testStringParam(_ param: String!)
    func testNumberParam(_ param: NSNumber)
    func testObjectParam(_ param: NSObject)
    func testStringParam(_ param: String, andNumber: NSNumber)
}
