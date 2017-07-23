//
//  SignupUpdateVC.swift
//  ECommerceApp
//
//  Created by Abhishek on 22/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class SignupUpdateVC: UITableViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var phnTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var retypePasswordTxtField: UITextField!
    
    var isForUpdating: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fields: [UITextField] = [emailTxtField, phnTxtField, passwordTxtField, retypePasswordTxtField]
        for tf in fields {
            self.setupUI(txtField: tf)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
 
    func setupUI(txtField: UITextField) {
        let placeHolerAttr = [NSForegroundColorAttributeName: UIColor.lightGray]
        let attrString = NSAttributedString(string: txtField.placeholder ?? "", attributes: placeHolerAttr)
        txtField.attributedPlaceholder = attrString
        
        let frame = txtField.convert(txtField.bounds, to: self.view)
        let x1 = frame.origin.x
        let y = frame.origin.y + frame.size.height
        let start = CGPoint(x: x1, y: y)
        
        let x2 = frame.origin.x + frame.size.width
        let end = CGPoint(x: x2, y: y)
        AppUtility.getLine(view: self.view, startPoint: start, endPoint: end)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        
    }
    
}
