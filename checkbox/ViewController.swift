//
//  ViewController.swift
//  checkbox
//
//  Created by Afnan on 08/03/2021.
//

import UIKit

class ViewController: UIViewController, BEMCheckBoxDelegate {

    @IBOutlet weak var checkBox1: BEMCheckBox!
    override func viewDidLoad() {
        super.viewDidLoad()
        checkBox1.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func didTap(_ checkBox: BEMCheckBox) {
        self.view.backgroundColor = UIColor.black
    }


}

