//
//  File.swift
//  SwiftleScript
//
//  Created by Mark Lively on 12/1/18.
//

import Foundation

extension NSObject {
    func answeredSelectors() ->Array<Selector>{
        var count:UInt32 = 0
        let ptr =  class_copyMethodList(self.classForCoder, &count)!
        var temp = Array<Selector>()
        for i in 0 ..< Int(count) {
            temp.append(method_getName(ptr[i]))
        }
        return temp
    }
}
