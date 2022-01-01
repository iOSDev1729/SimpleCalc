//
//  ViewController.swift
//  SimpleCalc
//
//  Created by Radhika Chilukuri on 30/12/21.
//

import UIKit

class ViewController: UIViewController {
 
//MARK: Required Variables
var displayNumber = ""
var lhsVal = ""
var rhsval = ""
var output = ""
var currentOperation:Operation = .noValue
    var historyArray = [String]()
    
    @IBAction func allClearPressed(_ sender: Any) {
        var displayNumber = ""
        var lhsVal = ""
        var rhsval = ""
        var output = ""
        resultlabel.text = "0"
    }
    
    @IBOutlet weak var resultlabel: UILabel!
    
    
    @IBAction func numberPressed(_ sender: RoundButton) {
        if displayNumber.count <= 15 { // Number display limit on calc label
        displayNumber += "\(sender.tag)"
        resultlabel.text = displayNumber
    }
    }
    
    @IBAction func dotPressed(_ sender: RoundButton) {
        displayNumber += "."
        resultlabel.text = displayNumber
    }
    
    @IBAction func equalPressed(_ sender: RoundButton) {
        operation(operation: currentOperation)
    }
    
    @IBAction func addPressed(_ sender: RoundButton) {
        operation(operation: .Add)
    }
    
    @IBAction func subPressed(_ sender: RoundButton) {
        operation(operation: .Subtract)
    }
    
    @IBAction func mulPressed(_ sender: RoundButton) {
        operation(operation: .Multiply)
    }
    
    @IBAction func divPressed(_ sender: RoundButton) {
        operation(operation: .Division)
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        resultlabel.text = "0"
    }

    func operation(operation:Operation) {
        if currentOperation != .noValue {
            if displayNumber != "" {
                rhsval = displayNumber
                displayNumber = ""
                
                if currentOperation == .Add {
                    output = "\(Double(lhsVal)! + Double(rhsval)!)"
                     
                } else if currentOperation == .Subtract {
                    output = "\(Double(lhsVal)! - Double(rhsval)!)"
                    
                } else if currentOperation == .Multiply {
                    output = "\(Double(lhsVal)! * Double(rhsval)!)"
                    
                } else if currentOperation == .Division {
                    output = "\(Double(lhsVal)! / Double(rhsval)!)"
                }
                lhsVal = output
                if (Double(output)!.truncatingRemainder(dividingBy: 1) == 0 ) {
                    output = "\(Int(Double(output)!))"
                }
                resultlabel.text = output
            }
            currentOperation = operation
 
        } else {
            lhsVal = displayNumber
            displayNumber = ""
            currentOperation = operation
        }
          historyArray.append("\(lhsVal) \(displayNumber) \(rhsval) \(String(describing: resultlabel.text)) = \(output)")
          print(historyArray)
    }
}


