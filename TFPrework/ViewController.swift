//
//  ViewController.swift
//  TFPrework
//
//  Created by Taohid Shadat on 5/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmount.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipPercentage.selectedSegmentIndex]
        tipAmount.text = String(format: "$%.2f", tip)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.layer.borderWidth = 3.0
        calculateButton.layer.borderColor = #colorLiteral(red: 0.8143477779, green: 1, blue: 0.4155697601, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clicked(_ sender: Any) {
        performSegue(withIdentifier: "firstsegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bill = Double(billAmount.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipPercentage.selectedSegmentIndex]
        let total = tip + bill
        
        //sends total over to secondviewcontroller
        var vc = segue.destination as! SecondViewController
        vc.newtotal = total
    }
    

}

