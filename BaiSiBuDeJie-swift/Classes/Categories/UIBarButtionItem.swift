//
//  UIBarButtionItem.swift
//  BaiSiBuDeJie-swift
//
//  Created by zhoujianfeng on 16/7/28.
//  Copyright © 2016年 zhoujianfeng. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    /**
     快速创建一个图标barButtonItem
     
     - parameter normalImage:      默认图片名
     - parameter highlightedImage: 高亮图片名
     - parameter target:           监听方法对象
     - parameter action:           方法选择器
     
     - returns: barButtonItem
     */
    class func item(normalImage: String, highlightedImage: String, target: AnyObject, action: Selector) -> UIBarButtonItem {
        let itemButton = UIButton(type: .Custom)
        itemButton.sizeToFit()
        itemButton.setImage(UIImage(named: normalImage), forState: .Normal)
        itemButton.setImage(UIImage(named: highlightedImage), forState: .Highlighted)
        itemButton.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        return UIBarButtonItem(customView: itemButton)
    }
}
