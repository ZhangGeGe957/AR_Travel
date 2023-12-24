//
//  MyViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit
import SnapKit

class MyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 获取屏幕的宽和高
    private let Width = UIScreen.main.bounds.width
    private let Height = UIScreen.main.bounds.height
    
    // Model
    private let myTableViewModel = MyTableViewModel()
    
    // TableView
    private var myTableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 状态栏高度
        let statusBarHeight = UIApplication.shared.statusBarFrame.height;
        // 顶部的安全距离
        let topSafeAreaHeight = (statusBarHeight - 20)
        
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        
        
        // 数据展示tableView
        self.myTableView = UITableView(frame: CGRect(x: 0, y: topSafeAreaHeight + 10, width: Width, height: Height - topSafeAreaHeight - 10), style: .grouped)
        // 注册cell
        self.myTableView.register(MyTableViewDefaultCell.self, forCellReuseIdentifier: "Default")
        self.myTableView.register(MyTableViewPersonCell.self, forCellReuseIdentifier: "Person")
        self.myTableView.register(MyTableViewRecordCell.self, forCellReuseIdentifier: "Record")
        self.myTableView.separatorStyle = .none
        self.myTableView.backgroundColor = UIColor.white
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        self.view.addSubview(self.myTableView)
    }
    
    // tableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.section == 0) {
            let myTableViewPersonCell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath) as? MyTableViewPersonCell
            // 取消选中
            myTableViewPersonCell?.selectionStyle = .none
            myTableViewPersonCell?.avatarImageView.image = UIImage(named: "Avatar")
            myTableViewPersonCell?.personNameLabel.text = "user"
            return myTableViewPersonCell!
        } else if (indexPath.section == 1) {
            let myTableViewRecordCell = tableView.dequeueReusableCell(withIdentifier: "Record", for: indexPath) as? MyTableViewRecordCell
            // 取消选中
            myTableViewRecordCell?.selectionStyle = .none
            return myTableViewRecordCell!
        } else {
            let myTableViewDefaultCell = tableView.dequeueReusableCell(withIdentifier: "Default", for: indexPath) as? MyTableViewDefaultCell
            // 取消选中
            myTableViewDefaultCell?.selectionStyle = .none
            // 图片
            let photoModelArray = self.myTableViewModel.photoModelArrayWithSection(section: indexPath.section)
            myTableViewDefaultCell?.iconImageView.image = UIImage(named: photoModelArray[indexPath.row] as! String)
            // 内容
            let modelArray = self.myTableViewModel.modelArrayWithSection(section: indexPath.section)
            myTableViewDefaultCell?.contentLabel.text = modelArray[indexPath.row] as? String
            
            return myTableViewDefaultCell!
        }
    }
    
    // 组名
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return (self.myTableViewModel.sectionNameArray[section] as! String)
    }
    
    // 组数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5;
    }
    
    // 每组cell数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section <= 1) {
            return 1
        } else {
            return self.myTableViewModel.modelArrayWithSection(section: section).count
        }
    }
    
    // cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.section == 0) {
            return 80
        } else if (indexPath.section == 1) {
            return 60
        } else {
            return 50
        }
    }
    
    // 头视图高度
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section <= 1) {
            return 0
        } else {
            return 30
        }
    }
    
    // 脚视图高度
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectCell = tableView.cellForRow(at: indexPath) as? MyTableViewDefaultCell
        print(selectCell?.contentLabel.text)
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
