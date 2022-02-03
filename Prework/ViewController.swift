//
//  ViewController.swift
//  Prework
//
//  Created by Surya Patil on 2/1/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get bill amount from text field input
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplyinh tip * tipPercentage
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f",tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f",total) 
    }
    

}

