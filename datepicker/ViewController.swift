//
//  ViewController.swift
//  datepicker
//
//  Created by Afnan on 27/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtDate.delegate = self
    }
}

extension ViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField){
        self.opendatePicker()
    }
}

extension ViewController {
    
    func opendatePicker(){
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.addTarget(self, action: #selector(self.datePickerHandler(datePicker:)), for:.valueChanged)
        txtDate.inputView = datePicker // keyboard
        
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        
        let cancelBtn = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelButton))
        
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButton))
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar.setItems([cancelBtn,flexibleSpace,doneButton], animated: false)
        txtDate.inputAccessoryView = toolbar
        
    }
    
    @objc
    func cancelButton(){
        txtDate.resignFirstResponder()
    }
    
    @objc
    func doneButton(){
        if let dataPicker = txtDate.inputView as? UIDatePicker{
            let dateFormater = DateFormatter()
            dateFormater.dateStyle = .medium
            txtDate.text = dateFormater.string(from: dataPicker.date)
            print(dataPicker.date)
        }
        txtDate.resignFirstResponder()
    }
    
    @objc
    func datePickerHandler(datePicker: UIDatePicker){
        print(datePicker.date)
    }
}

