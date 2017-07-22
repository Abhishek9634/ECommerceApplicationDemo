//
//  AppUtility.swift
//  ECommerceApp
//
//  Created by Admin on 11/06/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class AppUtility: NSObject {

    
}

extension UITextField {
    
    func getLine() {
        let x1 = self.frame.origin.x
        let y = self.frame.origin.y + self.frame.size.height
        let start = CGPoint(x: x1, y: y)
        
        let x2 = self.frame.origin.x + self.frame.size.width
        let end = CGPoint(x: x2, y: y)
        
        let path = UIBezierPath()
        path.move(to: start)
        path.addLine(to: end)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.lightGray.cgColor
        shapeLayer.lineWidth = 1.0
        shapeLayer.fillColor = UIColor.clear.cgColor
        self.layer.addSublayer(shapeLayer)
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
 
