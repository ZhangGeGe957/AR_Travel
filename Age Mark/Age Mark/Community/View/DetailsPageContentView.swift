//
//  DetailsPageContentView.swift
//  Travel AR Escort
//
//  Created by 张佳乔 on 2023/12/19.
//

import UIKit

class DetailsPageContentModel: NSObject {
    var titleText: String?
    var contentText: String?
}

class DetailsPageContentView: UIView {
    
    // Model
    var contentModel: DetailsPageContentModel? {
        didSet {
            titleLabel?.text = contentModel!.titleText
            contentLabel?.text = contentModel!.contentText
        }
    }
    
    // UI
    private var titleLabel: UILabel?
    private var contentLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // 初始化UI
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 设置UI
    private func setupUI() {
        titleLabel = UILabel()
        titleLabel?.textColor = .black
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        addSubview(titleLabel!)
        titleLabel?.snp.makeConstraints({ make in
            make.top.equalToSuperview().offset(15)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        })
        
        contentLabel = UILabel()
        contentLabel?.textColor = .black
        contentLabel?.font = UIFont.systemFont(ofSize: 17)
        addSubview(contentLabel!)
        contentLabel?.snp.makeConstraints({ make in
            make.top.equalTo(titleLabel!.snp_bottom).offset(10)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview()
        })
    }
}
