//
//  BrunoView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/19.
//

import UIKit
import SnapKit
class BrunoView: UIView {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        
        
        let imageViewTwo = UIImageView()
        imageViewTwo.image = UIImage(named: "Frame 33846")
        self.addSubview(imageViewTwo)
        imageViewTwo.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 343 * 660)
        }
        
        let label = UILabel()
        self.addSubview(label)
        label.backgroundColor = UIColor.white
        label.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(100)
        }
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 7071_副本")
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
        
        
        let imageViewThree = UIImageView()
        imageViewThree.image = UIImage(named: "Frame 33627")
        self.addSubview(imageViewThree)
        imageViewThree.snp.makeConstraints { make in
            make.left.equalTo(imageViewTwo).offset(0)
            make.top.equalTo(imageViewTwo).offset(10 + Width / 343 * 660)
            make.width.equalTo(189)
            make.height.equalTo(30)
        }
        
        let imageViewFour = UIImageView()
        imageViewFour.image = UIImage(named: "Frame 7087-2_副本")
        self.addSubview(imageViewFour)
        imageViewFour.snp.makeConstraints { make in
            make.left.equalTo(imageViewThree).offset(0)
            make.top.equalTo(imageViewThree).offset(20)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 375 * 98)
        }
        
    }
    
    @objc func returnSearchView() {
        NotificationCenter.default.post(name: Notification.Name("ReturnToPrivacy"), object: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
