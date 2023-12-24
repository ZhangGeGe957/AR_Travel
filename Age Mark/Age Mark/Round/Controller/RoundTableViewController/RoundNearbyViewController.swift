//
//  RoundNearbyViewController.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/18.
//

import UIKit

class RoundNearbyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var nearbyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nearbyTableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height), style: .plain)
        nearbyTableView.delegate = self
        nearbyTableView.dataSource = self
        nearbyTableView.backgroundColor = .gray
        view.addSubview(nearbyTableView)
    }
    
    // MARK: TableViewDelegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
