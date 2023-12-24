//
//  ScanViewControllerThree.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/25.
//

import UIKit

class ScanViewControllerThree: UIViewController {

    //定义屏幕的宽和高
    var observer : NSObjectProtocol?
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        self.view.backgroundColor = UIColor.gray
        
        
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "alert"), for: .normal)
        self.view.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.equalTo(self.view).offset((Width - 270) / 2)
            make.top.equalTo(self.view).offset((Height - 172) / 2)
            make.width.equalTo(270)
            make.height.equalTo(172)
        }
        
        
        let buttonTwo = UIButton(type: .custom)
        self.view.addSubview(buttonTwo)
        buttonTwo.snp.makeConstraints { make in
            make.left.equalTo(self.view).offset(200)
            make.top.equalTo(self.view).offset(450)
            make.width.equalTo(100)
            make.height.equalTo(60)
        }
        buttonTwo.addTarget(self, action: #selector(JumpToNext), for: .touchUpInside)
        
        
        
        observer = NotificationCenter.default.addObserver(forName: Notification.Name("ReturnToScan"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
            self.dismiss(animated: false)
        })
//        let alertController = UIAlertController(title: "Age Mark 需要权限使用相机", message: "访问您的相机，以便您进行建筑识别，隔空涂鸦，发布打卡等", preferredStyle: .actionSheet)
//
//        let cancelAction = UIAlertAction(title: "Don't Allow", style: .cancel) { _ in
//            // 点击了“取消”按钮后执行的代码
//        }
//
//        let deleteAction = UIAlertAction(title: "Ok", style: .destructive) { _ in
//            // 点击了“删除”按钮后执行的代码
//
//                self.JumpToNext()
//                print("111111")
//        }
//
//        alertController.addAction(cancelAction)
//        alertController.addAction(deleteAction)
//
//        present(alertController, animated: true)

        
//        let alertController = UIAlertController(title: "Age Mark 需要权限使用相机", message: "访问您的相机，以便您进行建筑识别，隔空涂鸦，发布打卡等", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "Ok", style: .default) { (_) in
//            self.JumpToNext()
//            print("111111")
//        }
        //alertController.addAction(okAction)
//        let cancelAction = UIAlertAction(title: "Don't Allow", style: .cancel) { (_) in
//        }
//        alertController.addAction(cancelAction)
//        self.present(alertController, animated: true, completion: nil)
//
        
        // Do any additional setup after loading the view.
    }
    
    @objc func JumpToNext() {
        
        
        
            let viewController = ScanViewTwoController()
            viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(viewController, animated: false)
    }
   
}
