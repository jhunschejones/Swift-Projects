//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let dice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    var roll : [UIImage] = []

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        var nextRoll = getNextRole()
        while nextRoll.elementsEqual(roll) { nextRoll = getNextRole() }
        roll = nextRoll
        
        diceImageViewOne.image = roll.first
        diceImageViewTwo.image = roll.last
    }
    
    private func getNextRole() -> [UIImage] {
        return [dice.randomElement()!, dice.randomElement()!]
    }
    
}

