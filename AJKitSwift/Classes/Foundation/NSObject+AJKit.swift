//
//  NSObject+AJKit.swift
//  AJKitSwift
//
//  Created by 徐结兵 on 2019/12/1.
//

import Foundation

public extension NSObject {
    
    /// 获取class类名
    var ajClassName:String {
        get {
            var name = type(of: self).description()
            if name.contains(".") {
               name = name.components(separatedBy: ".")[1]
            }
            return name
        }
    }
    
    /// 获取类的子类集合
    class var ajSubClasses:[AnyClass] {
        get {
            var count: UInt32 = 0, result: [AnyClass] = []
            let allClasses = objc_copyClassList(&count)!
            for n in 0 ..< count {
                let someClass: AnyClass = allClasses[Int(n)]
                guard let someSuperClass = class_getSuperclass(someClass), String(describing: someSuperClass) == String(describing: self) else { continue }
                result.append(someClass)
            }
            return result
        }
    }
    
}
