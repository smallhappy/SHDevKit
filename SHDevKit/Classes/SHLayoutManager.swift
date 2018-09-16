//
//  UIViewController+FrameSize.swift
//  TestFloatTextFiled
//
//  Created by smallHappy on 2018/6/5.
//  Copyright © 2018年 SmallHappy. All rights reserved.
//

import UIKit

// MARK: - 寬、高及間距
extension UIViewController {
    
    /// ViewController 的寬
    var frameW: CGFloat {
        return self.view.frame.width
    }
    
    /// ViewController 的高
    var frameH: CGFloat {
        return self.view.frame.height
    }
    
}

/// 螢幕的寬
var screenW: CGFloat {
    return UIScreen.main.bounds.width
}

/// 螢幕的高
var screenH: CGFloat {
    return UIScreen.main.bounds.height
}

/// UI 的間距
let gap: CGFloat = 10

// MARK: - 設定 frame
extension UIView {
    
    /// 設定 frame
    func setFrame(x: CGFloat? = nil, y: CGFloat? = nil, width: CGFloat? = nil, height: CGFloat? = nil) {
        if let x = x {
            self.frame.origin.x = x
        }
        if let y = y {
            self.frame.origin.y = y
        }
        if let width = width {
            self.frame.size.width = width
        }
        if let height = height {
            self.frame.size.height = height
        }
    }
    
    /// 根據上方的 UI 物件，設定 origin.y
    func setOriginY(_ upperView: UIView, gap: CGFloat) {
        self.frame.origin.y = upperView.frame.maxY + gap
    }
    
    /// 根據上方的 UI 物件，設定 origin.y (預設間距gap)
    func setOriginY(_ upperView: UIView) {
        self.frame.origin.y = upperView.frame.maxY + gap
    }
    
    /// 根據左方的 UI 物件，設定 origin.x
    func setOriginX(_ leftView: UIView, gap: CGFloat) {
        self.frame.origin.x = leftView.frame.maxX + gap
    }
    
    /// 根據左方的 UI 物件，設定 origin.x (預設間距gap)
    func setOriginX(_ leftView: UIView) {
        self.frame.origin.x = leftView.frame.maxX + gap
    }
    
}

// MARK: - 設定 layer
extension UIView {
    
    enum EdgeSyle {
        case withDefaultParameter
        case withBorder(UIColor, CGFloat)
        case withoutBorder
    }
    
    /// 設定邊界樣式
    func setEdge(cornerRadius: CGFloat? = 8.0, edgeSyle: EdgeSyle = .withDefaultParameter) {
        // 圓角
        if let cornerRadius = cornerRadius {
            self.layer.cornerRadius = cornerRadius
        }
        // 邊界
        switch edgeSyle {
        case .withDefaultParameter:
            self.layer.borderColor = UIColor.darkGray.cgColor
            self.layer.borderWidth = 1.0
        case .withBorder(let color, let width):
            self.layer.borderColor = color.cgColor
            self.layer.borderWidth = width
        case .withoutBorder:
            break
        }
    }
    
    /// 設定陰影
    func setShadow(color: UIColor = UIColor.darkGray, radius: CGFloat = 2.0, opacity: Float = 0.8, offset: CGSize = CGSize(width: 2, height: 2)) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
    }
    
}

// MARK: - 偵測轉向
extension UIViewController {
    
    /// 添加 ntification observer
    func addDeviceOrientationNotificationObserver(_ selector: Selector) {
        NotificationCenter.default.addObserver(self, selector: selector, name: .UIDeviceOrientationDidChange, object: nil)
    }
    
    /// 移除 ntification observer
    func removeDeviceOrientationNotificationObserver() {
        NotificationCenter.default.removeObserver(self, name: .UIDeviceOrientationDidChange, object: nil)
    }
    
}
