//
//  ViewController.swift
//  AS-Swift
//
//  Created by Mark Lively on 11/26/18.
//  Copyright © 2018 Mark Lively. All rights reserved.
//

import Cocoa
import AppleScriptObjC

class ViewController: NSViewController {

    @objc dynamic var selectors = Array<String>()
    let myScript: MyScript
    
    required init?(coder: NSCoder) {
        Bundle.main.loadAppleScriptObjectiveCScripts()
        let c:AnyClass = NSClassFromString("MyScript")!
        myScript = c.alloc() as! MyScript
        let scriptSelectors = Set((myScript as! NSObject).answeredSelectors())
        let objectSelectors = Set(NSObject().answeredSelectors())
        selectors = Array(scriptSelectors.subtracting(objectSelectors).map{$0.description}.sorted())
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    @IBAction func string(_ sender: Any) {
        myScript.testStringParam("W00t woOt!")
    }

    @IBAction func int(_ sender: Any) {
        myScript.testNumberParam(37)
    }
    
    @IBAction func object(_ sender: Any) {
        myScript.testObjectParam(NSDate())
    }
    
    @IBAction func stringInt(_ sender: Any) {
        myScript.testStringParam("Best Number", andNumber: 1)
    }
    
    @IBAction func none(_ sender: Any) {
        myScript.testNoParam()
    }
    
    
}

