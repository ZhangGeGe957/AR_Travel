//
//  PrivacyView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/19.
//

import UIKit
import SnapKit
class PrivacyView: UIView {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 7071")
        self.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(50)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 375 * 48)
        }
        
        
        let buttonReturn = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(buttonReturn)
        //buttonReturn.backgroundColor = UIColor.red
        buttonReturn.snp.makeConstraints { make in
            make.left.equalTo(imageView).offset(20)
            make.top.equalTo(imageView).offset(0)
            make.width.equalTo(Width / 375 * 48)
            make.height.equalTo(Width / 375 * 48)
        }
        buttonReturn.addTarget(self, action: #selector(returnSearchView), for: UIControl.Event.touchUpInside)
        
        
        
        
        let buttonLast = UIButton(type: UIButton.ButtonType.custom)
        //buttonLast.image = UIImage(named: "Frame 7066-2")
        buttonLast.setImage(UIImage(named: "Frame 7066-2"), for: UIControl.State.normal)
        self.addSubview(buttonLast)
        buttonLast.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(imageView).offset(Width / 375 * 48)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 347 * 720)
        }
        buttonLast.addTarget(self, action: #selector(pressBruno), for: UIControl.Event.touchUpInside)
    }
    @objc func pressBruno() {
        NotificationCenter.default.post(name: Notification.Name("JumpToBruno"), object: nil)
    }
    
    @objc func returnSearchView() {
        NotificationCenter.default.post(name: Notification.Name("ReturnToSearch"), object: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
