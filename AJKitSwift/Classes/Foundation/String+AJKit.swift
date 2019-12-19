//
//  String+AJKit.swift
//  AJKitSwift
//
//  Created by 徐结兵 on 2019/12/1.
//

import Foundation

public extension String {
    func ajOpenInSafari() -> Bool {
        if self.isEmpty {
            return false
        }
        guard let url = URL.init(string: self) else {
            return false
        }
        guard !UIApplication.shared.canOpenURL(url) else {
            AJPrintLog("打开系统自带浏览器时, URL格式传的不对, URL是:\(self)")
            return false;
        }
        return UIApplication.shared.openURL(url);
    }
    
    func ajClassObject() -> AnyClass? {
        let projectName = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        let classObj:AnyClass? = NSClassFromString(projectName + "." + self)
        return classObj
    }
}
