//
//  ViewController.swift
//  autocapitalize
//
//  Created by Afnan on 27/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    
    
    @IBOutlet weak var txt2: UITextField!
    
    
    @IBOutlet weak var txt3: UITextField!
    
    
    @IBOutlet weak var txt4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txt1.autocapitalizationType = .allCharacters
        txt2.autocapitalizationType = .none
        txt3.autocapitalizationType = .sentences
        txt4.autocapitalizationType = .words
        
    }


}

