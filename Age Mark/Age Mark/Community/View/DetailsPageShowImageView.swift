//
//  DetailsPageShowImageView.swift
//  Travel AR Escort
//
//  Created by 张佳乔 on 2023/12/17.
//

import UIKit
import SnapKit

class DetailsPageShowImageView: UIView {
    
    var showImageView: UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 初始化UI
    private func setupUI() {
        showImageView = UIImageView()
        addSubview(showImageView!)
        showImageView?.snp.makeConstraints({ make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        })
    }
}
