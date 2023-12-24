//
//  SearchButtonView.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/13.
//
import UIKit
import SnapKit

class SearchButtonView: UIView {

    public var indexNumber: NSNumber!
    public var searchBackImageView: UIImageView!
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        // 在这里进行视图的初始化设置，例如设置背景颜色、添加子视图等
        indexNumber = NSNumber()
        
        searchBackImageView = UIImageView()
        addSubview(searchBackImageView)
        searchBackImageView.snp.makeConstraints { make in
            make.left.equalTo(self.snp_left)
            make.top.equalTo(self.snp_top)
            make.size.equalTo(self)
        }
    }

    // MARK: - Drawing and Layout
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // 在这里进行自定义的绘制操作
        // 例如，使用 CGContext 绘制图形、通过 UIBezierPath 绘制路径等
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        // 在这里进行自定义的布局操作
        // 例如，调整子视图的位置和大小
    }

    // MARK: - User Interaction
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        // 在这里处理触摸事件的开始
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        // 在这里处理触摸事件的移动
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        // 在这里处理触摸事件的结束
    }
    
    // ... 可以根据需要重写其他方法
}
