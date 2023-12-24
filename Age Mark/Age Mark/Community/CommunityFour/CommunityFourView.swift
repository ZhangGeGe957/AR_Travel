//
//  CommunityFourView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/25.
//

import UIKit

class CommunityFourView: UIView {
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.yellow
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Info")
        self.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 375 * 812)
        }
        
        
        let label = UILabel()
        label.backgroundColor = UIColor.white
        self.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(50)
        }
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: "arrow-left 1"), for: UIControl.State.normal)
        self.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(self).offset(50)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        button.addTarget(self, action: #selector(returnTwo), for: UIControl.Event.touchUpInside)
        
        
    }
    
    @objc func returnTwo() {
        NotificationCenter.default.post(name: Notification.Name("ReturnToCommunityTwo"), object: nil)
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
