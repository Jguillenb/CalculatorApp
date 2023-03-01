//
//  CalculatorServiceProtocol.swift
//  Calculator-iOS
//
//  Created by Jorge Guillén on 20/09/22.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var calculatorWorkings: UILabel!
    @IBOutlet private weak var calculatorResults: UILabel!
        
    var historyManager: HistoryManagerProtocol! = HistoryManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // historyManager = HistoryManager()
    }
    
    func getCalculatorResults() -> String? {
        calculatorResults.text
    }
    func getCalculatorWorkings() -> String? {
        calculatorWorkings.text
    }
    
    @IBAction func historyTapped(_ sender: UIButton) {
        let story = UIStoryboard(name: "MainViewController", bundle: nil)
        guard let controller = story.instantiateViewController(identifier: "SecondController") as? SecondController else { return }
        controller.historyManager = historyManager
        present(controller, animated: true, completion: nil)
    }

    var workings: String = ""
    
    var isEvaluated = false
    
    // function that adds values to calculator
    func addToWorkings(value: String ) {
        
        isEvaluated = false
                
        let operatorsArray = ["+", "-", "*", "/"]

        if
            operatorsArray.contains(value),
           let last = workings.last,
           operatorsArray.contains(String(last))
        {
            workings.removeLast()
        }
        
        if value == "." && workings.last == "." {
            workings.removeLast()
        }
    
        workings += value
       // print(calculatorResults.text)
        calculatorWorkings.text = workings
    }

    // ac
    @IBAction func allClearTap(_ sender: Any) {
        workings = ""
        calculatorWorkings.text = ""
        calculatorResults.text = ""
        
    }
    
    // =
    @IBAction func equalsTap(_ sender: Any) {
        // addToWorkings(value: "=")
       
        if validInput() {
            // let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            
            let decimalExpression = toDecimalExpression(expression: workings)
            let expression = NSExpression(format: decimalExpression)
            let result = expression.expressionValue(with: nil, context: nil) as? Double ?? 0
            let resultString = formatResult(result: result)
            calculatorResults.text = resultString
            workings = resultString
            isEvaluated = true
            saveToHistory(decimalExpression + "=" + resultString)
        } else {
            let alert = UIAlertController(title: "Invalid Input",
                                          message: "Calculaor unable to do math based on input", preferredStyle: .alert )
            alert.addAction(UIAlertAction(title: "Okay",
                                          style: .default))
            self.present(alert, animated: true, completion: nil)
            
        }

    }
    
    func saveToHistory(_ string: String) {
        historyManager.record(string)
    }
        
    // function to make decimals work
func toDecimalExpression(expression: String) -> String {
        var tempExpression: String = ""
        var isOperator = false
        var hasDecimal = false
        let operators = ["+", "-", "*", "/"]
        for char in expression {
            if operators.contains("\(char)") {
                isOperator = true
            }
            if char == "." {
                hasDecimal = true
            }
            if isOperator && !hasDecimal {
                tempExpression += ".0"
                isOperator = false
            } else if isOperator && hasDecimal {
                isOperator = false
                hasDecimal = false
            }
            tempExpression.append(char)
        }
        if !isOperator && !hasDecimal {
            tempExpression += ".0"
        }
        return tempExpression
    }
    
    func validInput() -> Bool {
        var count = 0
        var funcCharIndexes = [Int]()
        for char in workings {
            if specialCharacter(char: char) {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        var previous: Int = -1
        
        for index in funcCharIndexes {
            if index == 0 {
                return false
            }
            if index == workings.count - 1 {
                return false
            }
            
            if previous != -1 {
                if index - previous == -1 {
                    return false
                }
            }
            
            previous = index
        }
        
        return true
    }
    
    func specialCharacter(char: Character) -> Bool {
        if char == "*" {
            return true
        }
        if char == "/" {
            return true
        }
        if char == "+" {
            return true
        }
        return false
    }

    func formatResult(result: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func backTap(_ sender: Any) {
        if !workings.isEmpty {
            workings.removeLast()
            calculatorWorkings.text = workings
        }
    }
    
    @IBAction func divideTap(_ sender: Any) {
        addToWorkings(value: "/")
    }
    
    @IBAction func timesTap(_ sender: Any) {
        addToWorkings(value: "*")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorkings(value: "-")

    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorkings(value: "+")

    }
    @IBAction func decimalTap(_ sender: Any) {
        addToWorkings(value: ".")

    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorkings(value: "0")

    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorkings(value: "1")

    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorkings(value: "2")

    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToWorkings(value: "3")

    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorkings(value: "4")

    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorkings(value: "5")

    }
    
    @IBAction func sixTap(_ sender: Any) {
        addToWorkings(value: "6")

    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorkings(value: "7")

    }
    
    @IBAction func eightTap(_ sender: Any ) {
        addToWorkings(value: "8")

    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorkings(value: "9")

    }

}
