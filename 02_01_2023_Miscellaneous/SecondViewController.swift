//
//  SecondViewController.swift
//  02_01_2023_Miscellaneous
//
//  Created by Vishal Jagtap on 14/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()

        stepper.autorepeat = true
        stepper.isContinuous = true
        displayLabel.text = stepper.value.description
        stepper.minimumValue = 0
        stepper.maximumValue = 20
    }
    
    
    @IBAction func onStepperValueChanged(_ sender: UIStepper) {
        displayLabel.text = String(sender.value)
        if(sender.value > 20){
            displayLabel.text = String(20)
        }
    }
}
