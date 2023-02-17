//
//  Calculator Brain.swift
//  CalculateBMI
//
//  Created by James Penny on 16/02/2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getbackgroundColour() -> UIColor {
        return bmi?.backgroundColour ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func gettextColour() -> UIColor {
        return bmi?.textColour ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", backgroundColour: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), textColour: .black)
        
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", backgroundColour: #colorLiteral(red: 0.721568644, green: 0.9862745166, blue: 0.5921568871, alpha: 1), textColour: .black)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", backgroundColour: #colorLiteral(red: 1.9098039269, green: 0.1784313738, blue: 0.1431372762, alpha: 1), textColour: .white)
        }
    }
}






