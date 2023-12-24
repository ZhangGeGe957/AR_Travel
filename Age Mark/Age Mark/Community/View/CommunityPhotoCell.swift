//
//  CommunityPhotoCell.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/7.
//

import UIKit
import SnapKit

class CommunityPhotoCell : UICollectionViewCell {
    
    public var photoImageView: UIImageView?
    public var titleLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // 圆角和边缘线
        layer.masksToBounds = true;
        layer.cornerRadius = 15.0;
        layer.borderWidth = 0.2;
        
        photoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        contentView.addSubview(photoImageView!)
        
        titleLabel = UILabel()
        photoImageView?.addSubview(titleLabel!)
        titleLabel?.snp.makeConstraints({ make in
            make.left.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-40)
            make.width.equalToSuperview()
        })
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
