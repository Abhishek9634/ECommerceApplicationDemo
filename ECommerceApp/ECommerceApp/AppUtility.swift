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

extension UIStoryboard {

    class func getStoryboard(name: String?) -> UIStoryboard {
        let sbName: String = name != nil ? name! : "Main"
        return UIStoryboard.init(name: sbName, bundle: nil)
    }
    
    class func getVC(storyboard name: String, vcStoryboardId id: String) -> UIViewController {
        return getStoryboard(name: name).instantiateViewController(withIdentifier: id)
    }
    
}
