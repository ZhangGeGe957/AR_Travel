//
//  CommunityDetailsPageViewController.swift
//  Travel AR Escort
//
//  Created by 张佳乔 on 2023/12/17.
//

import UIKit
import SnapKit

class CommunityDetailsPageViewController: UIViewController {
    
    // Model
    var detailsViewModel: DetailsPageViewModel = DetailsPageViewModel()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        // 设置UI
        setupUI()
    }
    
    // MARK: - UI Init
    private func setupUI() {
        let topView = ZJQTopView(frame: CGRectZero)
        topView.backButton!.addTarget(self, action: #selector(clickBackButton), for: .touchUpInside)
        topView.titleLabel?.text = detailsViewModel.detailsContentModel.titleText
        view.addSubview(topView)
        topView.snp.updateConstraints({ make in
            make.top.equalToSuperview().offset(DefaultData.shared().statusBarHeight)
            make.left.equalToSuperview()
            make.width.equalToSuperview()
        })
        
        let showImageView = DetailsPageShowImageView(frame: CGRectZero)
        showImageView.showImageView?.image = UIImage(named: "RoundViewFirst")
        view.addSubview(showImageView)
        showImageView.snp.updateConstraints { make in
            make.top.equalTo(topView.snp_bottom)
            make.left.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(DefaultData.shared().screenHeight / 4)
        }
        
        let contentView = DetailsPageContentView(frame: CGRectZero)
        contentView.contentModel = detailsViewModel.detailsContentModel
        view.addSubview(contentView)
        contentView.snp.updateConstraints { make in
            make.top.equalTo(showImageView.snp_bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
}

// MARK: - 点击事件
extension CommunityDetailsPageViewController {
    // 返回按钮
    @objc private func clickBackButton() {
        self.dismiss(animated: true)
    }
}
