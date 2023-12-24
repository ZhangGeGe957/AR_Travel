//
//  ViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

class ViewController: UIViewController {

    var observer : NSObjectProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        //添加view
        let view = CommunityView()
        view .initView()
        self.view.addSubview(view)
        self.view.backgroundColor = UIColor.yellow
        
        observer = NotificationCenter.default.addObserver(forName: Notification.Name("JumpToCommunityTwo"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
            let viewController = CommunityTwoViewController()
            viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(viewController, animated: false)
        })
        // Do any additional setup after loading the view.
    }


}

