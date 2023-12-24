//
//  RoundViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit
import SnapKit

class RoundViewController: UIViewController, UIScrollViewDelegate {

    private var segmentedControl: UISegmentedControl! = nil
    private var backgroundScrollView: UIScrollView!
    
    // tableViewController
    private var recommendView = RoundRecommendViewController()
    private var focusOnView = RoundFocusOnViewController()
    private var nearbyView = RoundNearbyViewController()
    
    // Model
    private let roundModel = RoundModel()
    
    // 获取屏幕的宽和高
    private let Width = UIScreen.main.bounds.width
    private let Height = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 状态栏高度
        let statusBarHeight = UIApplication.shared.statusBarFrame.height;
        // 顶部的安全距离
        let topSafeAreaHeight = (statusBarHeight - 20)
        
        view.backgroundColor = .white
        
        segmentedControl = UISegmentedControl(items: roundModel.segmentedArray as? [Any])
        segmentedControl.selectedSegmentIndex = 0
        let normalTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 25),
            .foregroundColor: UIColor.black
        ]
        let selectedTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 26),
            .foregroundColor: UIColor.black
        ]
        segmentedControl.setTitleTextAttributes(normalTitleAttributes, for: UIControl.State.normal)
        segmentedControl.setTitleTextAttributes(selectedTitleAttributes, for: UIControl.State.selected)
        segmentedControl.setBackgroundImage(UIImage(named: "BackImage_Blank"), for: .normal, barMetrics: .default)
        segmentedControl.setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        segmentedControl.tintColor = .clear
        segmentedControl.selectedSegmentTintColor = .clear
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        view.addSubview(segmentedControl)
        segmentedControl.snp.makeConstraints { make in
            make.left.equalTo(20)
            make.top.equalTo(20 + topSafeAreaHeight)
            make.height.equalTo(30)
        }
        
        backgroundScrollView = UIScrollView(frame: CGRect(x: 0, y: topSafeAreaHeight + 60, width: Width, height: Height - topSafeAreaHeight - 60))
        backgroundScrollView.contentSize = CGSize(width: Width * CGFloat(roundModel.segmentedArray.count), height: Height - topSafeAreaHeight - 60)
        backgroundScrollView.delegate = self
        backgroundScrollView.isPagingEnabled = true
        backgroundScrollView.showsHorizontalScrollIndicator = false
        view.addSubview(backgroundScrollView)
        
        // TableViewController
        recommendView = RoundRecommendViewController()
        recommendView.view.frame = CGRect(x: 0, y: 0, width: Width, height: Height - topSafeAreaHeight - 60)
        backgroundScrollView.addSubview(recommendView.view)
        
        focusOnView = RoundFocusOnViewController()
        focusOnView.view.frame = CGRect(x: Width, y: 0, width: Width, height: Height - topSafeAreaHeight - 60)
        backgroundScrollView.addSubview(focusOnView.view)
        
        nearbyView = RoundNearbyViewController()
        nearbyView.view.frame = CGRect(x: Width * 2, y: 0, width: Width, height: Height - topSafeAreaHeight - 60)
        backgroundScrollView.addSubview(nearbyView.view)
        
    }
    
    // MARK: ScrollView
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        segmentedControl.selectedSegmentIndex = Int(scrollView.contentOffset.x / Width)
    }
    
    // MARK: SegmentedControl
    @objc func segmentedControlValueChanged() {
        backgroundScrollView.setContentOffset(CGPoint(x: Int(Width) * segmentedControl.selectedSegmentIndex, y: 0), animated: true)
    }
}
