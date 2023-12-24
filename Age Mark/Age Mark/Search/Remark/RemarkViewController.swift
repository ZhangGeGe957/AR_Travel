//
//  RemarkViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/19.
//

import UIKit

class RemarkViewController: UIViewController {

    var observer : NSObjectProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //添加view
        let view = RemarkView()
        view .initView()
        self.view.addSubview(view)
        
        
        
        observer = NotificationCenter.default.addObserver(forName: Notification.Name("ReturnToSearch"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
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
