//
//  JFTabBar.swift
//  BaiSiBuDeJie-swift
//
//  Created by zhoujianfeng on 16/7/28.
//  Copyright © 2016年 zhoujianfeng. All rights reserved.
//

import UIKit

class JFTabBar: UITabBar {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundImage = UIImage(named: "tabbar-light")
        tintColor = ITEM_GRAY_COLOR
        
        // 中间加号按钮
        let addButton = UIButton(type: .Custom)
        addButton.setImage(UIImage(named: "tabBar_publish_icon"), forState: .Normal)
        addButton.setImage(UIImage(named: "tabBar_publish_click_icon"), forState: .Highlighted)
        addButton.size = CGSize(width: SCREEN_WIDTH / 5, height: 49)
        addButton.center = CGPoint(x: SCREEN_WIDTH * 0.5, y: 49 * 0.5)
        addButton.addTarget(self, action: #selector(didTappedAddButton(_:)), forControlEvents: .TouchUpInside)
        addSubview(addButton)
    }
    
    /**
     +号按钮点击事件
     */
    @objc private func didTappedAddButton(button: UIButton) {
        print("+ 点击")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // 重新布局tabBarButton
        let y: CGFloat = 0
        let width: CGFloat = SCREEN_WIDTH / 5
        let height: CGFloat = 49
        
        var index = 0
        for view in subviews {
            if !view.isKindOfClass(NSClassFromString("UITabBarButton")!) {
                continue
            }
            let x = CGFloat(index > 1 ? index + 1 : index) * width
            view.frame = CGRect(x: x, y: y, width: width, height: height)
            index += 1
        }
        
    }
    
}
