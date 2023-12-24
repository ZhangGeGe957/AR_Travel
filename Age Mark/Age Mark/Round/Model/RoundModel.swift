//
//  RoundModel.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/17.
//

import UIKit

class RoundModel: NSObject {
    public var segmentedArray: NSArray!
    
    // 初始化Model
    override init() {
        segmentedArray = NSArray(objects: "推荐", "关注", "附近")
    }
}
