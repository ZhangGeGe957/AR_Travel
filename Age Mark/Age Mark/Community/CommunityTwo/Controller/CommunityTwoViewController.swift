//
//  CommunityTwoViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/18.
//

import UIKit

class CommunityTwoViewController: UIViewController {

    var observer : NSObjectProtocol?
    var observerTwo : NSObjectProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //添加view
        let view = CommunityTwoView()
        view.initView()
        self.view.addSubview(view)
        
        //self.navigationController?.navigationBar.barTintColor = UIColor.white
        //self.title = "111111111111111111111111"
        //self.view.backgroundColor = UIColor.white
        
        
        
        observer = NotificationCenter.default.addObserver(forName: Notification.Name("ReturnToCommunity"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
            self.dismiss(animated: false)
        })
        
        
        
        
        observerTwo = NotificationCenter.default.addObserver(forName: Notification.Name("JumpToCommunityThree"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
            let viewController = CommunityViewThreeViewController()
            viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(viewController, animated: false)
        })
        // Do any additional setup after loading the view.
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
