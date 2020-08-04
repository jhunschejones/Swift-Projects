//
//  CaclulateViewController.swift
//  Tipsy
//
//  Created by Joshua on 8/1/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var tipPercent = 0.10
    
    @IBOutlet weak var zeroPercentTipButton: UIButton!
    @IBOutlet weak var tenPercentTipButton: UIButton!
    @IBOutlet weak var twentyPercentTipButton: UIButton!
    @IBOutlet weak var billAmmountInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Dismiss the keyboard on click-away
        self.view.addGestureRecognizer(self.endEditingRecognizer())
        self.navigationController?.navigationBar.addGestureRecognizer(self.endEditingRecognizer())


    }

    @IBAction func tipAmountSelected(_ sender: UIButton) {
        zeroPercentTipButton.isSelected = false
        tenPercentTipButton.isSelected = false
        twentyPercentTipButton.isSelected = false
        sender.isSelected = true
        
        tipPercent = Double(sender.tag) / 100.0
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        var billTotal: Double = 0.0
        if let billText = billAmmountInput.text {
            if billText.count > 0 {
                let billAmount = Double(billText) ?? 0.0
                billTotal = (billAmount * tipPercent) + billAmount
            }
        }
        
        print(billTotal)
        print(billAmmountInput.text)
//        print((billTotal! * tipPercent) + billTotal!)
    }
    
    private func endEditingRecognizer() -> UIGestureRecognizer {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(self.view.endEditing(_:)))
        tap.cancelsTouchesInView = false
        return tap
    }
}

