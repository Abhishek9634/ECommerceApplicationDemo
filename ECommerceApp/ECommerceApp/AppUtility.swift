//
//  AppUtility.swift
//  ECommerceApp
//
//  Created by Admin on 11/06/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class AppUtility: NSObject {
    
    class func getLine(view: UIView, startPoint: CGPoint, endPoint: CGPoint ) {
        let path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: endPoint)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.lightGray.cgColor
        shapeLayer.lineWidth = 1.0
        shapeLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(shapeLayer)
    }
}


extension UIStoryboard {

    class func getStoryboard(name: String?) -> UIStoryboard {
        let sbName: String = name != nil ? name! : "Main"
        return UIStoryboard.init(name: sbName, bundle: nil)
    }
    
    class func getVC(storyboard name: String, vcStoryboardId id: String) -> UIViewController {
        return getStoryboard(name: name).instantiateViewController(withIdentifier: id)
    }
}
 
