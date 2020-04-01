//
//  String+AJKit.swift
//  AJKitSwift
//
//  Created by 徐结兵 on 2019/12/1.
//

import Foundation

public extension String {
    
    /// 通过safari打开链接
    ///
    /// - Returns: 是否可以打开链接
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
    
    /// 根据类名和模块名获取AnyClass
    ///
    /// - Returns: AnyClass?
    func ajClassObject(_ projectName: String?) -> AnyClass? {
        var nameSpace = projectName
        if nameSpace == nil {
            nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        }
        let classObj:AnyClass? = NSClassFromString(projectName! + "." + self)
        return classObj
    }
    
    func ajBundle() -> Bundle? {
        guard let path = Bundle.main.path(forResource: self, ofType: "bundle") else {
            return nil;
        }
        let pptBundle = Bundle.init(path: path)
        return pptBundle;
    }
}
