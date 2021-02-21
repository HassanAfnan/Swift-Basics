//
//  ViewController.swift
//  swiftbasics
//
//  Created by Afnan on 21/02/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
        // Do any additional setup after loading the view.
    }

    func demo(){
       
        // let acts as const
        let str = "Afnan"
        print(str)
        
        // var is mutable
        var str2 = "Ali"
        print(str2)
        str2 = "Maaz"
        print(str2)
        
        // Empty String
        let empty = ""
        if(empty.isEmpty){
            print("empty")
        }else{
            print("not empty")
        }
        
        // compare strings
        // print placeholders \()
        let str3 = "Hello"
        let str4 = "Hello"
        if(str3 == str4){
            print("strings \(str3) and \(str4) are equal")
        }else{
            print("not equal")
        }
        
        let va = 12
        var vb:Float
        vb = 12.00
        print(va);
        print(vb);
        
        //Optional
        
        var aa:Int?
        var ss:String?

        print(aa)
        print(ss)
        
        // Force Unwrapping
        
        var mainstr:String?
        mainstr = "hamza";
        print(mainstr)
        print(mainstr!)
        
        // Array
        
        var myarray = [String]()
        myarray = ["yy","pp","aa","cc"]
        print(myarray)
        
        // string working
        let age = 25
        let name = "Afnan"
        let name1 = name + " is " + String(age)
        print(name1)
        
        // Initiallize an array
        
        let stars: [String] = [];
        print(stars)
        
        // Dictionary keys and values
        
        let ages = [
            "Afnan":22,
            "Ali":23
        ]
        
        print(ages["Afnan"]!)
        
        if let manAge = ages["Ali"]{
            print("Ali is \(manAge) years old")
        }
        
        // Set use to find unique values
         
        var colors: Set<String> = ["Blue","Red","Orange","Black","Red","Red"]
        print(colors)
        
        colors.insert("Pink")
        
        print(colors)
        
        colors.remove("Red")
        print(colors)
        
        print(colors.contains("Black"))
        
        // Tuples
        
        let fullname = ("Afnan","hassan")
        print(fullname.0)
        print(fullname.1)
        
        let (first,last) = ("Hassan","Hasham")
        print(first)
        print(last)
        
        // we can ignore a vilue using _
        
        // controll flow
        if 10 > 5 {
            print("10 is greater then 5")
        }else{
            print("not at all")
        }
        
        // switch
        
        let name4 = "Afnan"
        switch name4 {
        case "Ali":
            print("Hello Ali")
        case "Afnan":
            print("Hello Afnan")
        default:
            print("No Match found")
        }
        
        // loop and collections
        
        let names = ["Ali","Maaz","Hassan","Talha","Afnan"]
        
        for name in names{
            print("Name: "+name)
        }
        
        for i in 1...4{
            print(names[i])
        }
        
        for i in 1...10{
            if i % 3 == 0 {
                print(i)
            }
        }
    
        let three = stride(from:3, to: 10, by: 3)
        for n in three{
            print(n)
        }
        
        // indices
        let name2 = ["qwqw","asas","zxzx","wewe"]
        for nameindex in name2.indices{
            if(nameindex < 3){
                print(name2[nameindex])
            }
        }
        
        // enumerated()
        
        for(index, name) in name2.enumerated(){
            print(index)
            print(name)
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

}

