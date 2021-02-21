//
//  ViewController.swift
//  segment
//
//  Created by Afnan on 21/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    
    @IBOutlet weak var seg: UISegmentedControl!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func ValueChanged(_ sender: Any)
    {
        if seg.selectedSegmentIndex == 0
        {
            lbl.isHidden = false;
            image.isHidden = false;
            image.image = #imageLiteral(resourceName: "Facebook.png")
            lbl.text = "Facebook";
        }
        else if seg.selectedSegmentIndex == 1
        {
            lbl.isHidden = false;
            image.isHidden = false;
            image.image = #imageLiteral(resourceName: "google.png")
            lbl.text = "Google";
        }
        else if seg.selectedSegmentIndex == 2
        {
            lbl.isHidden = false;
            image.isHidden = false;
            image.image = #imageLiteral(resourceName: "linkdin.jpg")
            lbl.text = "Linkdin";
        }
        else if seg.selectedSegmentIndex == 3
        {
            lbl.isHidden = false;
            image.isHidden = false;
            image.image = #imageLiteral(resourceName: "amazon.png")
            lbl.text = "Amazon";
        }
    }
    
    
    override func viewDidLoad() {
        lbl.isHidden = true;
        image.isHidden = true;
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

