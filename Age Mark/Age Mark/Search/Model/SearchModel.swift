//
//  SearchModel.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/8.
//

import UIKit
import CoreLocation

class SearchModel: NSObject {
    
    public var addressString: String!
    public var itemNameArray: NSArray!
    public var placesOfInterest: NSArray!
    public var regionalClassification: NSArray!
    
    // 初始化Model
    public func initWithModel() {
        addressString = LocationManager.shareManager.curCity
        itemNameArray = NSArray(objects: "名胜古迹", "地区分类")
        placesOfInterest = NSArray(objects: "Search_Places_0", "Search_Places_1")
        regionalClassification = NSArray(objects: "Search_Regional_0", "Search_Regional_1", "Search_Regional_2")
    }
}
