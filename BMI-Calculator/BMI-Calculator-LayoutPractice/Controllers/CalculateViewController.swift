//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        calculator.setHeight(sender.value)
        heightLabel.text = "\(String(format: "%.2f", calculator.getHeightInQuarterSteps())) in."
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        calculator.setWeight(sender.value)
        weightLabel.text = "\(String(format: "%.0f", calculator.getWeight())) lbs."
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            (segue.destination as! ResultViewController).bmi = calculator.calculateBmi()
        }
    }
}

