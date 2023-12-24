//
//  CommunityViewThree.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/20.
//

import UIKit
import ARKit
import SceneKit
class CommunityViewThree: UIView {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    var sceneView: SCNView!
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.gray
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        
        let imageViewOne = UIImageView()
        imageViewOne.image = UIImage(named: "Rectangle 33")
        self.addSubview(imageViewOne)
        imageViewOne.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.width.equalTo(Width)
            make.height.equalTo(Height)
        }
        
        
        sceneView = SCNView()
        sceneView.frame = CGRect(x: 0, y: 100, width: Width, height: Width)
        sceneView.accessibilityViewIsModal = false
        sceneView.isUserInteractionEnabled = true
        sceneView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(sceneView)
        sceneView.backgroundColor = UIColor.clear
        
        
        // Load the USDZ model file and add it to the scene
        guard let usdzURL = Bundle.main.url(forResource: "Greek_Temple", withExtension: "usdz") else { return }
        let scene = try! SCNScene(url: usdzURL, options: nil)
        sceneView.scene = scene
        
        
        // Add lighting to the scene
        let lightNode = SCNNode()
        //lightNode.geometry?.firstMaterial?.diffuse.contents = UIColor.white
        lightNode.light = SCNLight()
        //lightNode.light?.color = UIColor.
        lightNode.light?.type = .directional
        lightNode.position = SCNVector3(x: 0, y: 0, z: 0)
        scene.rootNode.addChildNode(lightNode)
        
        
        
        sceneView.allowsCameraControl = true
        sceneView.showsStatistics = true
        
        
        
        
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 427319653")
        self.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.left.equalTo(self).offset(40)
            make.top.equalTo(sceneView).offset(Width + 20)
            make.width.equalTo(Width - 80)
            make.height.equalTo((Width - 40) / 289 * 218)
        }
        imageView.backgroundColor = UIColor.clear
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "Info")
//        self.addSubview(imageView)
//        imageView.snp.makeConstraints { make in
//            make.left.equalTo(self).offset(0)
//            make.top.equalTo(self).offset(0)
//            make.width.equalTo(Width)
//            make.height.equalTo(Width / 375 * 812)
//        }
//
//
//        let label = UILabel()
//        label.backgroundColor = UIColor.white
//        self.addSubview(label)
//        label.snp.makeConstraints { make in
//            make.left.equalTo(self).offset(0)
//            make.top.equalTo(self).offset(0)
//            make.width.equalTo(Width)
//            make.height.equalTo(50)
//        }
//
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: "Frame 427319655"), for: UIControl.State.normal)
        self.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(self).offset(70)
            make.width.equalTo(60)
            make.height.equalTo(45)
        }
        button.addTarget(self, action: #selector(returnTwo), for: UIControl.Event.touchUpInside)
        
        
        
        
        let buttonTwo = UIButton(type: UIButton.ButtonType.custom)
        buttonTwo.setImage(UIImage(named: "tab"), for: UIControl.State.normal)
        self.addSubview(buttonTwo)
        buttonTwo.snp.makeConstraints { make in
            make.left.equalTo(self).offset((Width - 160) / 2)
            make.top.equalTo(button).offset(0)
            make.width.equalTo(163)
            make.height.equalTo(45)
        }
        
        
        let buttonThree = UIButton(type: UIButton.ButtonType.custom)
        buttonThree.setImage(UIImage(named: "Frame 427319654"), for: UIControl.State.normal)
        self.addSubview(buttonThree)
        buttonThree.snp.makeConstraints { make in
            make.left.equalTo(self).offset(Width - 80)
            make.top.equalTo(button).offset(0)
            make.width.equalTo(60)
            make.height.equalTo(45)
        }
    }
    
    @objc func returnTwo() {
        NotificationCenter.default.post(name: Notification.Name("ReturnToCommunityTwo"), object: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
