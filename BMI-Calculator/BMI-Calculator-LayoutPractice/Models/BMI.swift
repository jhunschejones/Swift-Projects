//
//  BMI.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Joshua on 7/28/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    static func fromValue(_ bmiValue: Float) -> BMI {
        switch bmiValue {
        case 0..<18.5:
            return BMI(value: bmiValue, advice: "Eat more pizza", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5..<24.9:
            return BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        default:
            return BMI(value: bmiValue, advice: "Eat less pizza", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
}
