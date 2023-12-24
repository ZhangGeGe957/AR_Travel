//
//  MyTopView.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/1.
//

import UIKit
import SnapKit

class MyTopView : UIView {
    
    // 自身View高度
    public var myTopHeight : CGFloat = 0
    // 获取屏幕的宽和高
    private let Width = UIScreen.main.bounds.width
    private let Height = UIScreen.main.bounds.height
    
    // 初始化View
    func initView() {
        // 状态栏高度
        let statusBarHeight = UIApplication.shared.statusBarFrame.height;
        // 顶部的安全距离
        let topSafeAreaHeight = (statusBarHeight - 20)
        // 设置自身View
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: topSafeAreaHeight, width: Width, height: 60)
        
        // 初始化label
        let topNameLabel = UILabel()
        self.addSubview(topNameLabel)
        topNameLabel.text = "个人信息"
        topNameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        topNameLabel.textAlignment = NSTextAlignment.center
        topNameLabel.snp.makeConstraints { make in
            make.center.equalTo(self)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        
        // 记录自身View高度
        self.myTopHeight = self.frame.height
    }
}
