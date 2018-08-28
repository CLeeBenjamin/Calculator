//
//  ViewController.swift
//  Calculator Practice
//
//  Created by Caston  Boyd on 8/28/18.
//  Copyright © 2018 Caston  Boyd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorText: UILabel!
    var numbers: Int = 0
    var previousNumber: Int = 0
    var performCalculation = false
    var operation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        
        if performCalculation == true {
            if sender.tag != 7 {
            calculatorText.text = String(sender.tag)
            numbers = Int(calculatorText.text!)!
            performCalculation = false
    }
        } else {
            if sender.tag != 7 {
            calculatorText.text = calculatorText.text! + String(sender.tag)
            numbers = Int(calculatorText.text!)!
            }
        }
    }
    
    @IBAction func clearNumbersButton(_ sender: Any) {
        
        calculatorText.text = ""
    }
    
    @IBAction func addDecimalToNum(_ sender: UIButton) {
        
        if calculatorText.text == "" {
            calculatorText.text = "."
        }
        
    }
    
    @IBAction func addpercentage(_ sender: UIButton) {
    }
    
    @IBAction func createNegativeInt(_ sender: UIButton) {
    }
    
    
    @IBAction func operationButtons(_ sender: UIButton) {
        
        if calculatorText.text != "" && sender.tag != 14 {
            previousNumber = Int(calculatorText.text!)!
            
               
                switch sender.tag {
                case 10: calculatorText.text = "/" //Divide
                performCalculation = true
                case 11: calculatorText.text = "*" //Multiply
                performCalculation = true
                case 12: calculatorText.text = "-" //Subtract
                performCalculation = true
                case 13: calculatorText.text = "+" //Add
                performCalculation = true
                default: break
                    
                }
                operation = sender.tag
                
            }
                
            else if sender.tag == 14 {
                switch operation {
                case 10: calculatorText.text = String(previousNumber / numbers)
                case 11: calculatorText.text = String(previousNumber * numbers)
                case 12: calculatorText.text = String(previousNumber - numbers)
                case 13: calculatorText.text = String(previousNumber + numbers)
                default: break
                    
            }
          }
        }
    }

