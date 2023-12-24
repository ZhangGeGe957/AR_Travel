//
//  RoundRecommendViewController.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/18.
//

import UIKit

class RoundRecommendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var recommendTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recommendTableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height), style: .plain)
        recommendTableView.delegate = self
        recommendTableView.dataSource = self
        recommendTableView.backgroundColor = .orange
        view.addSubview(recommendTableView)
    }
    
    
    // MARK: TableViewDelegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
