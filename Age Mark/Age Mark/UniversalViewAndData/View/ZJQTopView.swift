//
//  ZJQTopView.swift
//  Travel AR Escort
//
//  Created by 张佳乔 on 2023/12/17.
//

import UIKit
import SnapKit

class ZJQTopView: UIView {
    
    var backButton: UIButton?
    var titleLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 初始化UI
    private func setupUI() {
        backButton = UIButton(type: .custom)
        backButton!.setImage(UIImage(named: "ZJQTopView_BackButton"), for: .normal)
        addSubview(backButton!)
        backButton!.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-10)
            make.size.equalTo(44)
        }
        
        titleLabel = UILabel()
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = .black
        titleLabel?.font = .boldSystemFont(ofSize: 20)
        addSubview(titleLabel!)
        titleLabel?.snp.makeConstraints({ make in
            make.width.equalTo(DefaultData.shared().screenWidth * 0.65)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        })
    }
}
