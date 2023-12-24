//
//  RemarkView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/19.
//

import UIKit
import SnapKit

class RemarkView: UIView {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Header-4 1")
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
        
        
        let imageViewTwo = UIImageView()
        imageViewTwo.image = UIImage(named: "Frame 7091-2_副本")
        self.addSubview(imageViewTwo)
        imageViewTwo.snp.makeConstraints { make in
            make.left.equalTo(imageView).offset(0)
            make.top.equalTo(imageView).offset(Width / 375 * 48)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 347 * 686)
        }
        
        
        let imageViewThree = UIImageView()
        imageViewThree.image = UIImage(named: "Frame 33841")
        self.addSubview(imageViewThree)
        imageViewThree.snp.makeConstraints { make in
            make.left.equalTo(imageViewTwo).offset(0)
            make.top.equalTo(imageViewTwo).offset(385)
            make.width.equalTo(Width)
            make.height.equalTo(Width / 375 * 387)
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
