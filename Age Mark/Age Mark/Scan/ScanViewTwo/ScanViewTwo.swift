//
//  ScanViewTwo.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/25.
//

import UIKit

class ScanViewTwo: UIView {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    let imageViewOne = UIImageView()
    var buttonTwo = UIButton()
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.yellow
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        
        
        
        
        
        
        
        imageViewOne.image = UIImage(named: "4. Home – nearby-1 1")
        self.addSubview(imageViewOne)
        imageViewOne.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(Height)
        }
        
        
        buttonTwo = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(buttonTwo)
        buttonTwo.backgroundColor = UIColor.clear
        buttonTwo.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(Height)
        }
        buttonTwo.addTarget(self, action: #selector(pressTwo), for: UIControl.Event.touchUpInside)
//        imageViewOne.frame = CGRect(x: 0, y: 0, width: Width, height: Height)
        
//        let imageViewTwo = UIImageView()
//        imageViewTwo.image = UIImage(named: "4. Home – nearby_副本2")
//        imageViewOne.frame = CGRect(x: Width, y: 0, width: Width, height: Height)
//
//
//        let imageViewThree = UIImageView()
//        imageViewThree.image = UIImage(named: "Measure-01")
//        imageViewOne.frame = CGRect(x: Width * 2, y: 0, width: Width, height: Height)
//
//
//        let imageViewFour = UIImageView()
//        imageViewFour.image = UIImage(named: "Measure-01_副本")
//        imageViewOne.frame = CGRect(x: Width * 3, y: 0, width: Width, height: Height)
        
        
        
        
//        scrollView.frame = CGRect(x: 0, y: 0, width: Width, height: Height)
//        scrollView.contentSize = CGSize(width: Width * 4, height: Height)
//        scrollView.addSubview(imageViewOne)
//        scrollView.addSubview(imageViewTwo)
//        scrollView.addSubview(imageViewThree)
//        scrollView.addSubview(imageViewFour)
//        self.addSubview(scrollView)
        
//
//        let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(_)in
//            self.ChangeBackImage()
//        })
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(self).offset(70)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        button.addTarget(self, action: #selector(returnScanView), for: UIControl.Event.touchUpInside)
        
        
    }
     
    @objc func pressTwo() {
        imageViewOne.removeFromSuperview()
        imageViewOne.image = UIImage(named: "Measure-01 2")
        self.addSubview(imageViewOne)
        buttonTwo.removeFromSuperview()
        self.addSubview(buttonTwo)
        buttonTwo.backgroundColor = UIColor.clear
        buttonTwo.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(Height)
        }
        let button = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(self).offset(70)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        button.addTarget(self, action: #selector(returnScanView), for: UIControl.Event.touchUpInside)
        buttonTwo.addTarget(self, action: #selector(pressThree), for: UIControl.Event.touchUpInside)
    }
    @objc func pressThree() {
        imageViewOne.removeFromSuperview()
        imageViewOne.image = UIImage(named: "4. Home – nearby 2")
        self.addSubview(imageViewOne)
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(self).offset(70)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        button.addTarget(self, action: #selector(returnScanView), for: UIControl.Event.touchUpInside)
        _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: {(_)in
            self.ChangeBackImage()
        })
    }
    func ChangeBackImage() {
        imageViewOne.removeFromSuperview()
        imageViewOne.image = UIImage(named: "Measure-01-1 1")
        self.addSubview(imageViewOne)
        
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(self).offset(70)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        button.addTarget(self, action: #selector(returnScanView), for: UIControl.Event.touchUpInside)
    }
    
    @objc func returnScanView() {
        NotificationCenter.default.post(name: Notification.Name("ReturnToScanTwo"), object: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
