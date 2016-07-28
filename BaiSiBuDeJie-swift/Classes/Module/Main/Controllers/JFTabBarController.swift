//
//  JFTabBarController.swift
//  BaiSiBuDeJie-swift
//
//  Created by zhoujianfeng on 16/7/16.
//  Copyright © 2016年 zhoujianfeng. All rights reserved.
//

import UIKit

class JFTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValue(JFTabBar(), forKey: "tabBar")
        
        prepareVc()
    }
    
    private func prepareVc() {
        
        let essenceVc = JFEssenceViewController()
        configChildViewController(essenceVc, title: "精华", imageName: "tabBar_essence_icon", selectedImageName: "tabBar_essence_click_icon")
        
        let newVc = JFNewViewController()
        configChildViewController(newVc, title: "最新", imageName: "tabBar_new_icon", selectedImageName: "tabBar_new_click_icon")
        
        let friendTrendsVc = JFFriendTrendsViewController()
        configChildViewController(friendTrendsVc, title: "关注", imageName: "tabBar_friendTrends_icon", selectedImageName: "tabBar_friendTrends_click_icon")
        
        let profileVc = JFProfileViewController()
        configChildViewController(profileVc, title: "我", imageName: "tabBar_me_icon", selectedImageName: "tabBar_me_click_icon")
    }
    
    /**
     配置TabBarController的子控制器
     
     - parameter childViewController: 子控制器
     - parameter title:               标题
     - parameter imageName:           默认图片名
     - parameter selectedImageName:   选中图片名
     */
    private func configChildViewController(childViewController: UIViewController, title: String, imageName: String, selectedImageName: String) {
        childViewController.tabBarItem.title = title
        childViewController.tabBarItem.image = UIImage(named: imageName)
        childViewController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        childViewController.view.backgroundColor = UIColor.whiteColor()
        let navigationC = JFNavigationController(rootViewController: childViewController)
        navigationC.navigationBar.setBackgroundImage(UIImage(named: "navigationbarBackgroundWhite"), forBarMetrics: .Default)
        addChildViewController(navigationC)
    }
}
