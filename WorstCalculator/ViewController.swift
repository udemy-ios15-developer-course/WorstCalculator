//
//  ViewController.swift
//  WorstCalculator
//
//  Created by Chris Hand on 7/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func operationButtonClicked(_ sender: UIButton) {
        
        guard let n1 : Double = Double(firstNumber.text!)
        else {
            print("could not convert the first number")
            return
        }
        
        guard let n2 : Double = Double(secondNumber.text!)
        else {
            print("could not convert the second number")
            return
        }
        
        var result : Double
        
        switch sender.titleLabel!.text {
        case "+":
            result = n1 + n2
            
        case "-":
            result = n1 - n2
            
        case "*":
            result = n1 * n2
            
        case "/":
            result = n1 / n2
            
        case .none:
            print("There was no button label")
            return
            
        case .some(_):
            print("I don't know the scenario where this happens")
            return
        }
       
        resultLabel.text = String(result)
    }
    
    
    @IBAction func clearButtonClicked(_ sender: Any) {
        firstNumber.text = ""
        secondNumber.text = ""
        resultLabel.text = "   "
    }
}

