//
//  ScanViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

class ScanViewController: UIViewController {
    
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        

        let imageViewOne = UIImageView()
        imageViewOne.image = UIImage(named: "Frame 427319646 1")
        self.view.addSubview(imageViewOne)
        imageViewOne.snp.makeConstraints { make in
            make.left.equalTo(self.view).offset(0)
            make.top.equalTo(self.view).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo((Width) / 375 * 812)
        }



        let buttonTwo = UIButton(type: UIButton.ButtonType.custom)
        self.view.addSubview(buttonTwo)
        buttonTwo.snp.makeConstraints { make in
            make.left.equalTo(self.view).offset(30)
            make.top.equalTo(self.view).offset(650)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        buttonTwo.addTarget(self, action: #selector(pressController), for: UIControl.Event.touchUpInside)
        
        
        
//        let alertController = UIAlertController(title: "Age Mark 需要权限使用相机", message: "访问您的相机，以便您进行建筑识别，隔空涂鸦，发布打卡等", preferredStyle: .alert)
//
//        // 添加操作按钮
//        let okAction = UIAlertAction(title: "Ok", style: .default) { (_) in
//            self.JumpToNext()
//        }
//        alertController.addAction(okAction)
//
//        // 添加取消按钮
//        let cancelAction = UIAlertAction(title: "Don't Allow", style: .cancel) { (_) in
//            // 取消按钮点击后执行的代码
//        }
//        alertController.addAction(cancelAction)
//
//        // 显示弹出框
//        self.present(alertController, animated: true, completion: nil)

        
        // Do any additional setup after loading the view.
//    func JumpToNext() {
//            let viewController = ScanViewTwoController()
//            viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//            viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
//            self.present(viewController, animated: false)
    }
    @objc func pressController() {
        let viewController = ScanViewControllerThree()
        viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(viewController, animated: false)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
