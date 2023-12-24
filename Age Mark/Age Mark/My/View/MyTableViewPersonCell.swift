//
//  MyTableViewPersonCell.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/4.
//

import UIKit
import SnapKit

class MyTableViewPersonCell: UITableViewCell {
    public var avatarImageView: UIImageView!
    public var personNameLabel: UILabel!
    public var editButton: UIButton!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        
        avatarImageView = UIImageView()
        contentView.addSubview(avatarImageView)
        avatarImageView.snp.makeConstraints { make in
            make.left.equalTo(20)
            make.top.equalTo(self)
            make.size.equalTo(80)
        }
        
        editButton = UIButton(type: .custom)
        editButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        editButton.setTitle("编辑", for: .normal)
        editButton.setTitleColor(UIColor.white, for: .normal)
        editButton.setBackgroundImage(UIImage(named: "edit_Button_Background"), for: .normal)
        contentView.addSubview(editButton)
        editButton.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.right.equalTo(self).offset(-20)
            make.width.equalTo(83)
            make.height.equalTo(30)
        }
        
        personNameLabel = UILabel()
        personNameLabel.textColor = UIColor.black
        personNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        personNameLabel.textAlignment = .left
        contentView.addSubview(personNameLabel)
        personNameLabel.snp.makeConstraints { make in
            make.top.equalTo(self.avatarImageView).offset(8)
            make.left.equalTo(self.avatarImageView.snp_right).offset(20)
            make.right.equalTo(self.editButton.snp_left).offset(-20)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

