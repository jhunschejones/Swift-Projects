//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Joshua on 7/27/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    let defaultBackgroundColor: UIColor = #colorLiteral(red: 0.2, green: 0.4823529412, blue: 0.7725490196, alpha: 1)
    let defaultBmi = 0.0
    let defaultAdvice = "Eat more snacks"
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%.1f", bmi?.value ?? defaultBmi)
        adviceLabel.text = bmi?.advice ?? defaultAdvice
        view.backgroundColor = bmi?.color ?? defaultBackgroundColor
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
