//
//  NSObject+AJKit.swift
//  AJKitSwift
//
//  Created by 徐结兵 on 2019/12/1.
//

import Foundation

public extension NSObject {
    var ajClassName:String {
        get {
            var name = type(of: self).description()
            if name.contains(".") {
               name = name.components(separatedBy: ".")[1]
            }
            return name
        }
    }
}
