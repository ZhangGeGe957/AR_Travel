//
//  CommunityView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

import SnapKit
class CommunityView: UIView {
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        let labelWelocme = UILabel()
        labelWelocme.text = "Welcome to"
        self.addSubview(labelWelocme)
        labelWelocme.font = UIFont.systemFont(ofSize: 35)
        labelWelocme.textAlignment = NSTextAlignment.left
        labelWelocme.snp.makeConstraints { make in
            make.left.equalTo(self).offset(20)
            make.top.equalTo(self).offset(30)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        
        
        
        let imageViewSoft = UIImageView()
        self.addSubview(imageViewSoft)
        imageViewSoft.image = UIImage(named: "Vector 225 (Stroke)")
        imageViewSoft.snp.makeConstraints { make in
            make.left.equalTo(labelWelocme).offset(200)
            make.top.equalTo(labelWelocme).offset(50)
            make.width.equalTo(68)
            make.height.equalTo(24)
        }
        
        
        let imageViewNotification = UIImageView()
        self.addSubview(imageViewNotification)
        imageViewNotification.image = UIImage(named: "Notification")
        imageViewNotification.snp.makeConstraints { make in
            make.left.equalTo(self).offset(Width - 160)
            make.top.equalTo(labelWelocme).offset(-30)
            make.width.equalTo(180)
            make.height.equalTo(200)
        }
        
        let imageViewVector = UIImageView()
        self.addSubview(imageViewVector)
        imageViewVector.image = UIImage(named: "Vector 2")
        imageViewVector.snp.makeConstraints { make in
            make.left.equalTo(self).offset(Width - 70)
            make.top.equalTo(imageViewNotification).offset(120)
            make.width.equalTo(30)
            make.height.equalTo(15)
        }
        
        
        let labelRuin = UILabel()
        labelRuin.text = "Ruined World"
        self.addSubview(labelRuin)
        labelRuin.font = UIFont.boldSystemFont(ofSize: 45)
        labelRuin.textAlignment = NSTextAlignment.left
        labelRuin.snp.makeConstraints { make in
            make.left.equalTo(labelWelocme).offset(0)
            make.top.equalTo(labelWelocme).offset(50)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        
        
        
        let imageViewSearch = UIImageView()
        self.addSubview(imageViewSearch)
        imageViewSearch.image = UIImage(named: "Search Bar")
        imageViewSearch.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(labelRuin).offset(60)
            make.width.equalTo(Width)
            make.height.equalTo(160)
        }
        
        
        
        let imageViewMask = UIImageView()
        self.addSubview(imageViewMask)
        imageViewMask.image = UIImage(named: "Mask group-4")
        imageViewMask.snp.makeConstraints { make in
            make.left.equalTo(self).offset(10)
            make.top.equalTo(imageViewSearch).offset(120)
            make.width.equalTo((Width - 20) / 2)
            make.height.equalTo(((Width - 20) / 2) / 152 * 126)
        }
        
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(button)
        button.setImage(UIImage(named: "Mask group-3"), for: UIControl.State.normal)
        //button.image = UIImage(named: "Mask group-3")
        button.snp.makeConstraints { make in
            make.left.equalTo(imageViewMask).offset((Width - 20) / 2)
            make.top.equalTo(imageViewMask).offset(0)
            make.width.equalTo((Width - 20) / 2)
            make.height.equalTo(((Width - 20) / 2) / 152 * 227)
        }
        button.addTarget(self, action: #selector(pressNext), for: UIControl.Event.touchUpInside)
        
        
        let imageViewThree = UIImageView()
        self.addSubview(imageViewThree)
        imageViewThree.image = UIImage(named: "Mask group-2")
        imageViewThree.snp.makeConstraints { make in
            make.left.equalTo(imageViewMask).offset(0)
            make.top.equalTo(imageViewMask).offset(((Width - 20) / 2) / 152 * 126 - 10)
            make.width.equalTo((Width - 20) / 2)
            make.height.equalTo(((Width - 20) / 2) / 159 * 256)
        }
        
        
        let imageViewFour = UIImageView()
        self.addSubview(imageViewFour)
        imageViewFour.image = UIImage(named: "Mask group-2_副本")
        imageViewFour.snp.makeConstraints { make in
            make.left.equalTo(imageViewThree).offset((Width - 20) / 2)
            make.top.equalTo(button).offset(((Width - 20) / 2) / 152 * 227 - 10)
            make.width.equalTo((Width - 20) / 2)
            make.height.equalTo(((Width - 20) / 2) / 159 * 109)
        }
        
        
        let imageViewFive = UIImageView()
        self.addSubview(imageViewFive)
        imageViewFive.image = UIImage(named: "Mask group-2_副本2")
        imageViewFive.snp.makeConstraints { make in
            make.left.equalTo(imageViewThree).offset(0)
            make.top.equalTo(imageViewThree).offset(((Width - 20) / 2) / 159 * 256 - 10)
            make.width.equalTo((Width - 20) / 2)
            make.height.equalTo(((Width - 20) / 2) / 190 * 157)
        }
        
        
        let imageViewSix = UIImageView()
        self.addSubview(imageViewSix)
        imageViewSix.image = UIImage(named: "Mask group-2_副本3")
        imageViewSix.snp.makeConstraints { make in
            make.left.equalTo(imageViewFive).offset((Width - 20) / 2)
            make.top.equalTo(imageViewFour).offset(((Width - 20) / 2) / 159 * 109 - 10)
            make.width.equalTo((Width - 20) / 2)
            make.height.equalTo(((Width - 20) / 2) / 159 * 131)
        }
    }
    @objc func pressNext() {
        NotificationCenter.default.post(name: Notification.Name("JumpToCommunityTwo"), object: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
