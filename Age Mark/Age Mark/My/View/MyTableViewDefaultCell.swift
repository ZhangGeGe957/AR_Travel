//
//  MyTableViewDefaultCell.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/2.
//

import UIKit
import SnapKit

class MyTableViewDefaultCell: UITableViewCell {
    public var iconImageView: UIImageView!
    public var contentLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        
        iconImageView = UIImageView()
        contentView.addSubview(iconImageView)
        
        contentLabel = UILabel()
        contentLabel.textColor = UIColor.black
        contentLabel.font = UIFont.systemFont(ofSize: 18)
        contentLabel.textAlignment = .left
        contentView.addSubview(contentLabel)
        
        self.iconImageView.snp.makeConstraints { make in
            make.centerY.equalTo(contentLabel.snp_centerY)
            make.left.equalTo(20)
        }
        
        self.contentLabel.snp.makeConstraints { make in
            make.top.equalTo(iconImageView.snp_top)
            make.left.equalTo(iconImageView.snp_right).offset(10)
            make.height.equalTo(20)
            make.width.equalTo(100)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
