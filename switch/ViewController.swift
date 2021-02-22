//
//  ViewController.swift
//  switch
//
//  Created by Afnan on 22/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var swt: UISwitch!
    
    
    @IBAction func valueChanged(_ sender: Any) {
        if swt.isOn {
            lbl.text = "Switch is Open";
        }
        else
        {
            lbl.text = "Switch is Off"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

