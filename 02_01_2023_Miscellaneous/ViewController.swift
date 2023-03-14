//
//  ViewController.swift
//  02_01_2023_Miscellaneous
//
//  Created by Vishal Jagtap on 14/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayInputTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "MM-dd-YYYY"
        displayInputTextField.inputView = datePicker
        datePicker.datePickerMode = .date
        displayInputTextField.text = dateFormatter.string(from: datePicker.date)
    }
    
    
    @IBAction func onDatePickerValueUpdated(_ sender: UIDatePicker){
        displayInputTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
}
