//
//  AJNibLoadable.swift
//  AJKitSwift
//
//  Created by 徐结兵 on 2020/3/11.
//

import Foundation

public protocol AJNibLoadable {
    
}

extension AJNibLoadable where Self : UIView {
    static func loadFromNib(_ nibname : String? = nil) -> Self {
        let loadName = nibname == nil ? "\(self)" : nibname!
        return Bundle.main.loadNibNamed(loadName, owner: nil, options: nil)?.first as! Self
    }
}
