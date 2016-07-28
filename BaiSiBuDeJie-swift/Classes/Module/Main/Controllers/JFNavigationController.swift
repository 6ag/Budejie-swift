//
//  JFNavigationController.swift
//  BaiSiBuDeJie-swift
//
//  Created by zhoujianfeng on 16/7/16.
//  Copyright © 2016年 zhoujianfeng. All rights reserved.
//

import UIKit

class JFNavigationController: UINavigationController {
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if childViewControllers.count > 0 {
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.item("返回", normalImage: "navigationButtonReturn", highlightedImage: "navigationButtonReturnClick", target: self, action: #selector(didTappedBackButton(_:)))
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    /**
     返回
     */
    @objc private func didTappedBackButton(button: UIBarButtonItem) {
        popViewControllerAnimated(true)
    }
}