//
//  ViewController.swift
//  validations
//
//  Created by Afnan on 02/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBOutlet weak var txtPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnOnClick(_ sender: UIButton) {
        if (txtEmail.text?.isEmailValid)! {
            print("Email is valid")
        }else{
            print("Email is not valid")
        }
        
        if(txtPassword.text?.isPasswordValid)!{
            print("Password is valid")
        }else{
            print("Password is not valid")
        }
        
        if (txtPhone.text?.isPhonenumber)!{
            print("Phone number is valid")
        }else{
            print("Phone number is not valid")
        }
    }
}

extension String {
    var isPhonenumber: Bool {
        do{
            let detector = try NSDataDetector(types:
             NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options:[] ,range: NSMakeRange(0,self.count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && res.range.location == 0 &&
                    res.range.length == self.count && self.count == 10
            }
            else{
                return false
            }
        } catch {
            return false
        }
    }
    
    var isEmailValid: Bool {
        let emailRegEx = "[a-zA-Z]+[0-9a-zA-Z._%+-]+[a-zA-Z0-9]+@[a-zA-Z0-9-]+\\.[a-zA-Z]{1,6}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    var isPasswordValid: Bool {
        let passwordText = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&])(?=.*\\d).{8,10}$")
        return passwordText.evaluate(with: self)
    }
    
}

