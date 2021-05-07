//
//  SecondViewController.swift
//  TFPrework
//
//  Created by Taohid Shadat on 5/6/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    var newtotal: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "$%.2f", newtotal)
    }
    @IBAction func clickedFinish(_ sender: Any) {
        performSegue(withIdentifier: "backsegue", sender: self)
    }
}
