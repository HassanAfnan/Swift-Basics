//
//  ViewController.swift
//  buttonandactioncollection
//
//  Created by Afnan on 26/02/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var btns: [UIButton]!
    
//    @IBAction func btnClick(_ sender: UIButton) {
//        sender.isSelected.toggle()
//        //sender.isSelected = !sender.isSelected
//        if sender.isSelected {
//            sender.setImage(UIImage(named: "home.png") ,for: .normal)
//        }else{
//            sender.setImage(UIImage(named: "home(selected).png") ,for: .normal)
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func BtnCollectionClick(_ sender: UIButton) {
        for btn in btns{
            btn.isSelected = false;
        }
        if sender.tag == 1 {
            sender.isSelected.toggle()
            print("Home")
        }
        else if sender.tag == 2{
            sender.isSelected.toggle()
            print("Rabbit")
        }
        else if sender.tag == 3{
            sender.isSelected.toggle()
            print("Tortoise")
        }
        else if sender.tag == 4{
            sender.isSelected.toggle()
            print("Chats")
        }
    }
    

}

