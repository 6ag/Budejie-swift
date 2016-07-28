//
//  JFEssenceViewController.swift
//  BaiSiBuDeJie-swift
//
//  Created by zhoujianfeng on 16/7/28.
//  Copyright © 2016年 zhoujianfeng. All rights reserved.
//

import UIKit

class JFEssenceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareUI()
    }
    
    /**
     准备UI
     */
    private func prepareUI() {
        
        prepareNavigationBar()
        
    }
    
    /**
     准备导航栏
     */
    private func prepareNavigationBar() {
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.leftItem("MainTagSubIcon", highlightedImage: "MainTagSubIconClick", target: self, action: #selector(didTappedLeftBarButton(_:)))
        
        navigationItem.titleView = UIImageView(image: UIImage(named: "MainTitle"))
    }
    
    @objc private func didTappedLeftBarButton(barButtonItem: UIBarButtonItem) {
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
    
}
