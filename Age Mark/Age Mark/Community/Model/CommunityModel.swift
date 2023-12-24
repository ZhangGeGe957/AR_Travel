//
//  CommunityModel.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/8.
//

import UIKit

class CommunityModel: NSObject {
    private var photoArray: NSArray! // 图片数组
    private var photoHeightArray: NSMutableArray! // 图片高度数组
    
    // 初始化Model
    override init() {
        photoArray = NSArray(objects: "Mask group-1", "Mask group-2", "Mask group-3", "Mask group-4", "Mask group-5", "Mask group-6", "Mask group-7", "Mask group-8", "Mask group-9", "Mask group-10")
        photoHeightArray = NSMutableArray()
        
        for photoName in photoArray {
            let tempImage = UIImage(named: photoName as! String)
            let photoHeight = ((UIScreen.main.bounds.width - 80) / 2) * (tempImage!.size.height / tempImage!.size.width)
            photoHeightArray.add((photoHeight != nil) ? photoHeight : 100 as CGFloat)
        }
    }
    
    // 返回图片String
    public func photoStringWithArray(_ index: Int) -> String {
        return self.photoArray[index] as! String
    }
    
    // 返回图片Height
    public func photoHeightWithArray(_ index: Int) -> CGFloat {
        return self.photoHeightArray[index] as! CGFloat
    }
}
