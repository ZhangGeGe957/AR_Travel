//
//  ScanView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit
import SnapKit
class ScanView: UIView {
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.yellow
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
//
//        let imageViewOne = UIImageView()
//        imageViewOne.image = UIImage(named: "扫描界面")
//        self.addSubview(imageViewOne)
//        imageViewOne.snp.makeConstraints { make in
//            make.left.equalTo(self).offset(0)
//            make.top.equalTo(self).offset(0)
//            make.width.equalTo(Width)
//            make.height.equalTo(Height - 60)
//        }
//
//
//
//        let buttonTwo = UIButton(type: UIButton.ButtonType.custom)
//        self.addSubview(buttonTwo)
//        buttonTwo.backgroundColor = UIColor.red
//        buttonTwo.snp.makeConstraints { make in
//            make.left.equalTo(self).offset(30)
//            make.top.equalTo(self).offset(600)
//            make.width.equalTo(300)
//            make.height.equalTo(50)
//        }
//        buttonTwo.addTarget(self, action: #selector(pressController), for: UIControl.Event.touchUpInside)
////
//        let alertController = UIAlertController(title: "Age Mark 需要权限使用相机", message: "访问您的相机，以便您进行建筑识别，隔空涂鸦，发布打卡等", preferredStyle: .alert)
//
//        // 添加操作按钮
//        let okAction = UIAlertAction(title: "Don't Allow", style: .default) { (_) in
//            // 确定按钮点击后执行的代码
//        }
//        alertController.addAction(okAction)
//
//        // 添加取消按钮
//        let cancelAction = UIAlertAction(title: "Ok", style: .cancel) { (_) in
//            // 取消按钮点击后执行的代码
//        }
//        alertController.addAction(cancelAction)
        
        // 显示弹出框
        //self.presen
        //self.addSubview(alertController)
        
        //    let alertController = UIAlertController(title: "Age Mark 需要权限使用相机", message: "访问您的相机，以便您进行建筑识别，隔空涂鸦，发布打卡等", preferredStyle: .alert)
        //    let alertAction1 = UIAlertAction(title: "Don't Allow", style: .default)
        //    let alertAction2 = UIAlertAction(title: "Ok", style: .default)
        //    s
        /*
         // Only override draw() if you perform custom drawing.
         // An empty implementation adversely affects performance during animation.
         override func draw(_ rect: CGRect) {
         // Drawing code
         }
         */
        
    }
//    @objc func pressController() {
//        NotificationCenter.default.post(name: Notification.Name("pressController"), object: nil)
//    }
}
