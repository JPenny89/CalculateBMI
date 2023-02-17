//
//  ResultViewController.swift
//  CalculateBMI
//
//  Created by James Penny on 16/02/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var backgroundColor: UIColor?
    var textColor: UIColor?
    
    
    @IBOutlet weak var yourResultText: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        yourResultText.textColor = textColor
        bmiLabel.text = bmiValue
        bmiLabel.textColor = textColor
        adviceLabel.text = advice
        adviceLabel.textColor = textColor
        view.backgroundColor = backgroundColor
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
   
    

}


