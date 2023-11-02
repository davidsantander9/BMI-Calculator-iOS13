//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func changeHeightValue(_ sender: UISlider) {
        String(format: "%.2f",heightSlider.value)
    }
    
    
    @IBAction func changeWeightValue(_ sender: UISlider) {
        String(format: "%.2f",weightSlider.value)
    }
    
}

