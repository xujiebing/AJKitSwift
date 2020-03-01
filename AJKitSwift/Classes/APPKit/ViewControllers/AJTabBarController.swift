//
//  AJTabBarController.swift
//  AJKitSwift
//
//  Created by 徐结兵 on 2020/2/27.
//

import UIKit

open class AJTabBarController: UITabBarController {

    override open func viewDidLoad() {
        super.viewDidLoad()
        self.ajInitData()
        self.ajInitView()
    }
    
    open func ajInitData() {
        
    }
    
    open func ajInitView() {
        
    }
    
    open func initTabBarController(parameters array: [Dictionary<String, String>]) {
        let modelsArray = modelArray(from: array, type: AJTabBarModel.self)
        var controllerArray = [AJNavigationController]()
        for item in modelsArray {
            let nav = self.initNavigationController(model: item as! AJTabBarModel)
            controllerArray.append(nav)
        }
        self.viewControllers = controllerArray
    }
    
    func initNavigationController(model: AJTabBarModel) -> AJNavigationController {
        var nav = AJNavigationController(rootViewController: AJViewController())
        guard let className = model.controllerName else {
            return nav
        }
        let iclass:AnyClass? = className.ajClassObject(model.nameSpace)
        if iclass == nil {
            return nav
        }
        let vcClass = iclass as! UIViewController.Type
        let vc = vcClass.init()
        vc.title = model.title
        nav = AJNavigationController(rootViewController: vc)
        let image = model.unSelectedImage
        if image != nil {
            nav.tabBarItem.image = UIImage(named: image!)
        }
        let selectedImage = model.selectedImage
        if selectedImage != nil {
            nav.tabBarItem.selectedImage = UIImage(named: selectedImage!)
        }
        return nav
    }
}
