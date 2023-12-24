//
//  CommunityFourViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/25.
//

import UIKit

class CommunityFourViewController: UIViewController {

    var observer : NSObjectProtocol?
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //添加view
        let view = CommunityFourView()
        view .initView()
        self.view.addSubview(view)
        
        
        
        observer = NotificationCenter.default.addObserver(forName: Notification.Name("ReturnToCommunityTwo"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
            self.dismiss(animated: false)
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
