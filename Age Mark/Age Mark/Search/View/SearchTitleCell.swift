//
//  SearchTitleCell.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/8.
//

import UIKit
import SnapKit

class SearchTitleCell : UICollectionViewCell {
    
    private var positionImageView: UIImageView!
    private var positionLabel: UILabel!
    public var addressLabel: UILabel!
    private var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        positionImageView = UIImageView(image: UIImage(named: "Search_Position"))
        contentView.addSubview(positionImageView)
        positionImageView.snp.makeConstraints { make in
            make.top.equalTo(self).offset(15)
            make.left.equalTo(self).offset(15)
            make.size.equalTo(24)
        }
        
        positionLabel = UILabel()
        positionLabel.text = "您当前在"
        positionLabel.textAlignment = .left
        positionLabel.textColor = UIColor.black
        positionLabel.font = UIFont.systemFont(ofSize: 15)
        contentView.addSubview(positionLabel)
        positionLabel.snp.makeConstraints { make in
            make.centerY.equalTo(positionImageView.snp_centerY)
            make.left.equalTo(positionImageView.snp_right)
        }
        
        addressLabel = UILabel()
        addressLabel.text = " "
        addressLabel.textAlignment = .left
        addressLabel.textColor = UIColor.black
        addressLabel.font = UIFont.boldSystemFont(ofSize: 15)
        contentView.addSubview(addressLabel)
        addressLabel.snp.makeConstraints { make in
            make.centerY.equalTo(positionLabel.snp_centerY)
            make.left.equalTo(positionLabel.snp_right).offset(5)
            make.width.equalTo(100)
        }
        
        titleLabel = UILabel()
        titleLabel.text = "Discover scenic spots and historical sites"
        titleLabel.textAlignment = .left
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.systemFont(ofSize: 35)
        titleLabel.numberOfLines = 0
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(positionImageView.snp_bottom).offset(15)
            make.left.equalTo(20)
            make.width.equalTo(self.frame.width)
        }
        boldFontWithStringOfRange(titleLabel, boldRange: NSRange(location: 0, length: 8))
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // UILabel部分字体加粗
    private func boldFontWithStringOfRange(_ textLabel: UILabel, boldRange: NSRange) {
        let textString = textLabel.text
        let attributedText = NSMutableAttributedString(string: textString!)
        // 设置加粗样式
        let boldFont = UIFont.boldSystemFont(ofSize: textLabel.font.pointSize)
        attributedText.addAttribute(.font, value: boldFont, range: boldRange)
        // 将富文本赋值给 UILabel
        textLabel.attributedText = attributedText
    }
}
