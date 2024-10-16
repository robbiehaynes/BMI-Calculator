//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Robert Haynes on 2024/10/16.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI? = nil
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        switch bmiValue {
        case ...18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", colour: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "You're doing great!", colour: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 25...:
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", colour: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        default:
            print("Invalid BMI")
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice available"
    }
    
    func getColour() -> UIColor {
        return bmi?.colour ?? .orange
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}
