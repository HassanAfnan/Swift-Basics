//
//  ViewController.swift
//  swiftyswitch
//
//  Created by Afnan on 01/03/2021.
//

import UIKit

class ViewController: UIViewController, SwiftySwitchDelegate {
    
    func valueChanged(sender: SwiftySwitch) {
        if switch1.isOn{
            self.view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        }else{
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    @IBOutlet weak var switch1: SwiftySwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch1.delegate = self
        // Do any additional setup after loading the view.
    }


}

