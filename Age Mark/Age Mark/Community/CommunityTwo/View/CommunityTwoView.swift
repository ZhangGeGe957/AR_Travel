//
//  CommunityTwoView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/18.
//

import UIKit
import SnapKit
class CommunityTwoView: UIView {
    
    
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image 29")
        self.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 405 * 343)
        }
        
        
        
        let buttonReturn = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(buttonReturn)
        buttonReturn.backgroundColor = UIColor.white
        buttonReturn.setImage(UIImage(named: "arrow-left 1"), for: UIControl.State.normal)
        buttonReturn.snp.makeConstraints { make in
            make.left.equalTo(imageView).offset(20)
            make.top.equalTo(imageView).offset(50)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        buttonReturn.layer.cornerRadius = 20
        buttonReturn.layer.masksToBounds = true
        buttonReturn.addTarget(self, action: #selector(returnCommunityView), for: UIControl.Event.touchUpInside)
        
        
        let imageViewTwo = UIImageView()
        imageViewTwo.image = UIImage(named: "Group 1000003297")
        self.addSubview(imageViewTwo)
        imageViewTwo.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(imageView).offset(Width / 405 * 343 - 30)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 391 * 536)
        }
        
        
        
        
        let imageViewThree = UIImageView()
        imageViewThree.image = UIImage(named: "Group 1000003298")
        self.addSubview(imageViewThree)
        imageViewThree.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(imageViewTwo).offset(Width / 391 * 536 - 61)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 375 * 78)
        }
        
        
        
        let buttonTwo = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(buttonTwo)
        //buttonTwo.backgroundColor = UIColor.red
        buttonTwo.snp.makeConstraints { make in
            make.left.equalTo(imageViewThree).offset(310)
            make.top.equalTo(imageViewThree).offset(30)
            make.width.equalTo(90)
            make.height.equalTo(40)
        }
        buttonTwo.addTarget(self, action: #selector(pressToNext), for: UIControl.Event.touchUpInside)
        
        
        
    }
    @objc func pressToNext() {
        NotificationCenter.default.post(name: Notification.Name("JumpToCommunityThree"), object: nil)
        
    }
    
    @objc func returnCommunityView() {
        //print("11111")
        NotificationCenter.default.post(name: Notification.Name("ReturnToCommunity"), object: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
