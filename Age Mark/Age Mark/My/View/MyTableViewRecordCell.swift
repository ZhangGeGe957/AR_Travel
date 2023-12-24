//
//  MyTableViewRecordCell.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/4.
//

import UIKit
import SnapKit

class MyTableViewRecordCell: UITableViewCell {
    public var travelName: UILabel!
    public var travelInfoButton: UIButton!
    public var checkInName: UILabel!
    public var checkInInfoButton: UIButton!
    public var beenToName: UILabel!
    public var beenToInfoButton: UIButton!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        
        // 记录
        checkInName = UILabel()
        checkInName.textColor = UIColor.systemBlue
        checkInName.font = UIFont.boldSystemFont(ofSize: 20)
        checkInName.textAlignment = .center
        checkInName.text = "打卡"
        contentView.addSubview(checkInName)
        checkInName.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(10)
            make.width.equalTo(50)
        }
        
        checkInInfoButton = UIButton(type: .custom)
        checkInInfoButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        checkInInfoButton.setTitle("0座奇迹", for: .normal)
        checkInInfoButton.setTitleColor(UIColor.black, for: .normal)
        contentView.addSubview(checkInInfoButton)
        checkInInfoButton.snp.makeConstraints { make in
            make.top.equalTo(self.checkInName.snp_bottom)
            make.centerX.equalTo(self.checkInName.snp_centerX)
            make.width.equalTo(80)
        }
        
        // 打卡
        travelName = UILabel()
        travelName.textColor = UIColor.systemBlue
        travelName.font = UIFont.boldSystemFont(ofSize: 20)
        travelName.textAlignment = .center
        travelName.text = "记录"
        contentView.addSubview(travelName)
        travelName.snp.makeConstraints { make in
            make.top.equalTo(checkInName.snp_top)
            make.right.equalTo(checkInName.snp_left).offset(-30)
            make.width.equalTo(50)
        }
        
        travelInfoButton = UIButton(type: .custom)
        travelInfoButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        travelInfoButton.setTitle("旅行", for: .normal)
        travelInfoButton.setTitleColor(UIColor.black, for: .normal)
        contentView.addSubview(travelInfoButton)
        travelInfoButton.snp.makeConstraints { make in
            make.top.equalTo(self.travelName.snp_bottom)
            make.centerX.equalTo(self.travelName.snp_centerX)
            make.width.equalTo(80)
        }
        
        // 去过
        beenToName = UILabel()
        beenToName.textColor = UIColor.systemBlue
        beenToName.font = UIFont.boldSystemFont(ofSize: 20)
        beenToName.textAlignment = .center
        beenToName.text = "去过"
        contentView.addSubview(beenToName)
        beenToName.snp.makeConstraints { make in
            make.top.equalTo(checkInName.snp_top)
            make.left.equalTo(checkInName.snp_right).offset(30)
            make.width.equalTo(50)
        }
        
        beenToInfoButton = UIButton(type: .custom)
        beenToInfoButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        beenToInfoButton.setTitle("0个国家", for: .normal)
        beenToInfoButton.setTitleColor(UIColor.black, for: .normal)
        contentView.addSubview(beenToInfoButton)
        beenToInfoButton.snp.makeConstraints { make in
            make.top.equalTo(self.beenToName.snp_bottom)
            make.centerX.equalTo(self.beenToName.snp_centerX)
            make.width.equalTo(80)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
