//
//  RoundFocusOnViewController.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/18.
//

import UIKit

class RoundFocusOnViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var focusOnTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        focusOnTableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height), style: .plain)
        focusOnTableView.delegate = self
        focusOnTableView.dataSource = self
        focusOnTableView.backgroundColor = .blue
        view.addSubview(focusOnTableView)
    }
    
    // MARK: TableViewDelegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
