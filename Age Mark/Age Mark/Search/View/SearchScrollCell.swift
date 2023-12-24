//
//  SearchScrollCell.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/11.
//

import UIKit
import SnapKit

class SearchScrollCell: UICollectionViewCell {

    public var itemName: UILabel!
    public var itemScrollView: UIScrollView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        itemName = UILabel()
        itemName.text = " "
        itemName.font = UIFont.boldSystemFont(ofSize: 20)
        contentView.addSubview(itemName)
        itemName.snp.makeConstraints { make in
            make.left.equalTo(20)
            make.top.equalTo(10)
        }
        
        itemScrollView = UIScrollView(frame: CGRect(x: 0, y: 40, width: self.frame.width, height: self.frame.height - 40))
        itemScrollView.isDirectionalLockEnabled = false
        itemScrollView.showsVerticalScrollIndicator = false
        itemScrollView.showsHorizontalScrollIndicator = false
        contentView.addSubview(itemScrollView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButtonViews(imageNameArray: [String]) {
        // 遍历按钮标题数组，并创建相应数量的按钮
        for (index, _) in imageNameArray.enumerated() {
            let buttonView = SearchButtonView()
            buttonView.indexNumber = index as NSNumber
            buttonView.isUserInteractionEnabled = true
            buttonView.layer.cornerRadius = 18.0
            buttonView.clipsToBounds = true
            buttonView.searchBackImageView.image = UIImage(named: imageNameArray[index])
            // 添加点击手势识别器
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
            buttonView.addGestureRecognizer(tapGesture)
            itemScrollView.addSubview(buttonView)
            
            buttonView.snp.makeConstraints { make in
                make.left.equalTo(itemScrollView.snp_left).offset(180 * index + 20)
                make.top.equalTo(itemScrollView.snp_top).offset(10)
                make.height.equalTo(itemScrollView.frame.height - 20)
                make.width.equalTo(150)
            }
        }
            
        // 设置scrollView的内容尺寸，确保所有按钮都可见
        itemScrollView.contentSize = CGSize(width: (imageNameArray.count != 0 ?  CGFloat(imageNameArray.count) : 0) * 185, height: itemScrollView.frame.height)
    }
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
        // 获取点击的 UIView
        guard let tappedView = gesture.view as? SearchButtonView else { return }
        
        print("View tapped: \(String(describing: tappedView.indexNumber))")
    }
}
