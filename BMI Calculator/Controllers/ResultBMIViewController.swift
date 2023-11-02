//
//  ResultBMIViewController.swift
//  BMI Calculator
//
//  Created by David C Santander on 01/11/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultBMIViewController: UIViewController {
    // Outlets
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    // Variables
    var bmi: Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(format: "%.0f", bmi)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
