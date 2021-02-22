//
//  ViewController.swift
//  stepper
//
//  Created by Afnan on 22/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    
    @IBAction func ValueChanged(_ sender: UIStepper) {
        lbl.text = Int(sender.value).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

