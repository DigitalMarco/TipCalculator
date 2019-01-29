//
//  ViewController.swift
//  TipCalculator
//
//  Created by Marco Cruz on 1/24/19.
//  Copyright © 2019 Marco Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // these are my outlets
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        print ("hello");
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {

        // get the bill
        let bill = Double(billField.text!) ?? 0
        //calculate the tip and total
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        
        
        
        //update the tip and total
        tipLabel.text=String(format: "$%.2f", tip)
        //tipLabel.text="$\(tip)"
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

