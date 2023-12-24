//
//  SearchViewController.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/8.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, WaterfallMutiSectionDelegate, UITextFieldDelegate, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    
    // 获取屏幕的宽和高
    private let Width = UIScreen.main.bounds.width
    private let Height = UIScreen.main.bounds.height
    
    // Model
    private let searchModel = SearchModel()
    
    // CollectionView
    private var searchCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 状态栏高度
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        // 顶部的安全距离
        let topSafeAreaHeight = (statusBarHeight - 20)
        
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        
        // Model
        self.searchModel.initWithModel()
        
        // CollectionViewLayout
        let searchFlowLayout = WaterfallMutiSectionFlowLayout()
        searchFlowLayout.scrollDirection = .vertical // 竖向滑动
        searchFlowLayout.delegate = self
        
        // CollectionView
        self.searchCollectionView = UICollectionView(frame: CGRect(x: 0, y: topSafeAreaHeight, width: Width, height: Height - topSafeAreaHeight), collectionViewLayout: searchFlowLayout)
        // 注册
        self.searchCollectionView?.register(SearchTitleCell.self, forCellWithReuseIdentifier: "Title")
        self.searchCollectionView?.register(CommunitySearchCell.self, forCellWithReuseIdentifier: "Search")
        self.searchCollectionView?.register(SearchScrollCell.self, forCellWithReuseIdentifier: "Scroll")
        self.searchCollectionView.delegate = self
        self.searchCollectionView.dataSource = self
        self.view.addSubview(self.searchCollectionView)
    }
    
    // MARK: UICollectionDelegate
    // UICollectionViewCell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (indexPath.section == 0) {
            let titleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Title", for: indexPath) as! SearchTitleCell
            titleCell.addressLabel.text = self.searchModel.addressString
            return titleCell
        } else if (indexPath.section == 1) {
            let searchBarCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Search", for: indexPath) as! CommunitySearchCell
            searchBarCell.textField.delegate = self
            return searchBarCell
        } else {
            var imageNameArray = NSArray()
            if (indexPath.section == 2) {
                imageNameArray = self.searchModel.placesOfInterest
            } else {
                imageNameArray = self.searchModel.regionalClassification
            }
            let scrollCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Scroll", for: indexPath) as! SearchScrollCell
            scrollCell.itemName.text = self.searchModel.itemNameArray[indexPath.section - 2] as? String
            scrollCell.itemScrollView.delegate = self
            scrollCell.setupButtonViews(imageNameArray: imageNameArray as! [String])
            return scrollCell
        }
    }
    
    // 获取分区数
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    // 获取每个分区里单元格数量
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    // MARK: WaterfallMutiSectionLayoutDelegate
    // collectionItem 高度
    func heightForRowAtIndexPath(collectionView collection: UICollectionView, layout: WaterfallMutiSectionFlowLayout, indexPath: IndexPath, itemWidth: CGFloat) -> CGFloat {
        switch indexPath.section {
            case 0:
                return 150
            case 1:
                return 50
            case 2:
                return 250
            case 3:
                return 150
            default:
                return 100
        }
    }
    
    // 每个 section 列数（默认2列）
    func columnNumber(collectionView collection: UICollectionView, layout: WaterfallMutiSectionFlowLayout, section: Int) -> Int {
        return 1
    }
    
    // 每个 section 边距（默认为0）
    func insetForSection(collectionView collection: UICollectionView, layout: WaterfallMutiSectionFlowLayout, section: Int) -> UIEdgeInsets {
        if (section == 1) {
            return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        } else {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
    }
    
    // MARK: UITextField
    // TextField内容改变时调用
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print(textField.text as Any)
    }
}
