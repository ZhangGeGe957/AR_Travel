//
//  ZJQLocationManager.swift
//  Age Mark
//
//  Created by 张佳乔 on 2023/9/9.
//
import UIKit
import CoreLocation
import MapKit

class LocationManager: NSObject {
    
    typealias locationCallBack = (_ curLocation:CLLocation?, _ curAddress:String?, _ curCity:String?, _ errorReason:String?)->()
    
    // MARK: 属性
    // 单例，唯一调用方法
    static let shareManager: LocationManager =  LocationManager()
    
    private override init() {
        
    }
    
    var manager: CLLocationManager?
    
    // 当前坐标
    var curLocation: CLLocation?
    // 当前选中位置的坐标
    var curAddressCoordinate: CLLocationCoordinate2D?
    // 当前位置地址
    var curAddress: String?
    // 市
    var curCity: String?
    // 回调闭包
    var callBack: locationCallBack?
    
    func creatLocationManager() -> LocationManager {
        manager = CLLocationManager()
        // 设置定位服务管理器代理
        manager?.delegate = self
        // 设置定位模式
        manager?.desiredAccuracy = kCLLocationAccuracyBest
        // 更新距离
        manager?.distanceFilter = 100
        // 发送授权申请
        manager?.requestWhenInUseAuthorization()
        return self
    }
    
    //更新位置
    open func startLocation(resultBack:@escaping locationCallBack) {
        
        self.callBack = resultBack
        
        DispatchQueue.global().async {
            if CLLocationManager.locationServicesEnabled() {
                //允许使用定位服务的话，开启定位服务更新
                self.manager?.startUpdatingLocation()
            }
        }
    }
    
}


extension LocationManager:CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // 获取最新的坐标
        curLocation = locations.last!
        // 停止定位
        if locations.count > 0 {
            manager.stopUpdatingLocation()
            LonLatToCity()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        callBack!(nil, nil, nil, "定位失败===\(error)")
    }
    
    // 经纬度逆编
    func LonLatToCity() {
        let geocoder: CLGeocoder = CLGeocoder()
        geocoder.reverseGeocodeLocation(self.curLocation!) { (placemark, error) -> Void in
            if (error == nil) {
                let firstPlaceMark = placemark!.first
                self.curAddress = ""
                // 省
                if let administrativeArea = firstPlaceMark?.administrativeArea {
                    self.curAddress?.append(administrativeArea)
                }
                // 自治区
                if let subAdministrativeArea = firstPlaceMark?.subAdministrativeArea {
                    self.curAddress?.append(subAdministrativeArea)
                }
                // 市
                if let locality = firstPlaceMark?.locality {
                    self.curAddress?.append(locality)
                    self.curCity = locality
                }
                // 区
                if let subLocality = firstPlaceMark?.subLocality {
                    self.curAddress?.append(subLocality)
                }
                // 地名
                if let name = firstPlaceMark?.name {
                    self.curAddress?.append(name)
                }
                
                self.callBack!(self.curLocation, self.curAddress, self.curCity, nil)
                
            } else {
                self.callBack!(nil, nil, nil, "\(String(describing: error))")
            }
        }
    }
    
}
