//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    // Variables
    var bmi: Float = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func changeHeightValue(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f",heightSlider.value) + "m"
    }
    
    
    @IBAction func changeWeightValue(_ sender: UISlider) {
        weightLabel.text = String(format: "%.2f",weightSlider.value) + "Kg"
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        let height =  heightSlider.value
        let weight = weightSlider.value
        bmi = weight / pow(height, 2)
       
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destination = segue.destination as! ResultBMIViewController
            destination.bmi = bmi
        }
    }
}

