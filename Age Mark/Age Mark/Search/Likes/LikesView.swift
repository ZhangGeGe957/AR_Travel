//
//  LikesView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/19.
//

import UIKit

class LikesView: UIView {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Header-4_副本")
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
        
        
        
        let imageViewLast = UIImageView()
        imageViewLast.image = UIImage(named: "Frame 7087-2")
        self.addSubview(imageViewLast)
        imageViewLast.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(Height - Width / 375 * 98)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 375 * 98)
        }
        
        
        
        let imageViewOne = UIImageView()
        imageViewOne.image = UIImage(named: "Group-2")
        self.addSubview(imageViewOne)
        imageViewOne.snp.makeConstraints { make in
            make.left.equalTo(self).offset(20)
            make.top.equalTo(buttonReturn).offset(Width / 375 * 48 + 20)
            make.width.equalTo((Width - 50) / 2)
            make.height.equalTo((Width - 50) / 2 / 158 * 190)
        }
        
        
        let imageViewTwo = UIImageView()
        imageViewTwo.image = UIImage(named: "Frame 427319642")
        self.addSubview(imageViewTwo)
        imageViewTwo.snp.makeConstraints { make in
            make.left.equalTo(imageViewOne).offset((Width - 50) / 2 + 10)
            make.top.equalTo(imageViewOne).offset(0)
            make.width.equalTo((Width - 50) / 2)
            make.height.equalTo((Width - 50) / 2 / 158 * 190)
        }
        
        let imageViewThree = UIImageView()
        imageViewThree.image = UIImage(named: "Group 1000003290 1")
        self.addSubview(imageViewThree)
        imageViewThree.snp.makeConstraints { make in
            make.left.equalTo(imageViewOne).offset(0)
            make.top.equalTo(imageViewOne).offset((Width - 50) / 2 / 158 * 190 + 10)
            make.width.equalTo((Width - 50) / 2)
            make.height.equalTo((Width - 50) / 2 / 158 * 190)
        }
        
        
        let imageViewFour = UIImageView()
        imageViewFour.image = UIImage(named: "Group 1000003291")
        self.addSubview(imageViewFour)
        imageViewFour.snp.makeConstraints { make in
            make.left.equalTo(imageViewThree).offset((Width - 50) / 2 + 10)
            make.top.equalTo(imageViewThree).offset(0)
            make.width.equalTo((Width - 50) / 2)
            make.height.equalTo((Width - 50) / 2 / 158 * 190)
        }
        
        
        
        let imageViewFive = UIImageView()
        imageViewFive.image = UIImage(named: "Group 1000003292")
        self.addSubview(imageViewFive)
        imageViewFive.snp.makeConstraints { make in
            make.left.equalTo(imageViewThree).offset(0)
            make.top.equalTo(imageViewThree).offset((Width - 50) / 2 / 158 * 190 + 10)
            make.width.equalTo((Width - 50) / 2)
            make.height.equalTo((Width - 50) / 2 / 158 * 190)
        }
        
        
        let imageViewSix = UIImageView()
        imageViewSix.image = UIImage(named: "Group 1000003291")
        self.addSubview(imageViewSix)
        imageViewSix.snp.makeConstraints { make in
            make.left.equalTo(imageViewFive).offset((Width - 50) / 2 + 10)
            make.top.equalTo(imageViewFive).offset(0)
            make.width.equalTo((Width - 50) / 2)
            make.height.equalTo((Width - 50) / 2 / 158 * 190)
        }
        
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
