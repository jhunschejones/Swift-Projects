//
//  Calculator.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Joshua on 7/28/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct Calculator {
    
    var weight: Float = 200.0
    var height: Float = 66.00
    
    mutating func setWeight(_ newWeight: Float) { weight = newWeight }
    
    func getWeight() -> Float { return weight }
    
    mutating func setHeight(_ newHeight: Float) {
        // Change height in increments of 0.25
        height = roundf(newHeight / 0.25) * 0.25
    }
    
    func getHeightInQuarterSteps() -> Float { return height }
    
    func calculateBmi() -> BMI {
        // BMI = Weight (Kg) / Height (m)^2
        let weightKg = weight * 0.453592
        let heightMeters = height * 0.0254
        return BMI.fromValue(weightKg / pow(heightMeters, 2))
    }
}
