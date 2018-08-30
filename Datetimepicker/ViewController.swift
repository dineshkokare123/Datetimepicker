//
//  ViewController.swift
//  Datetimepicker
//
//  Created by Student P_10 on 29/08/18.
//  Copyright © 2018 priya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let datetimepicker = UIDatePicker ()
    
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        toolBar.isUserInteractionEnabled = true
        toolBar.barStyle = UIBarStyle.default
        toolBar.tintColor = UIColor.black
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: #selector(doneCompleted))
        let  cancelButton = UIBarButtonItem(title: "Cancle", style: UIBarButtonItemStyle.done, target: self, action: #selector(cancelCompleted))
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([doneButton,cancelButton,spaceButton], animated: true)
        
        datetimepicker.datePickerMode = .date
        textfield.inputAccessoryView = toolBar
        textfield.inputView = datetimepicker
        

        
    }
    @objc func doneCompleted()
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        textfield.text = formatter.string(from: datetimepicker.date)
        view.endEditing(true)
    }
    @objc func cancelCompleted(){
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

