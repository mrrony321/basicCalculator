//
//  ViewController.swift
//  Calculator
//
//  Created by SDL on 11/6/18.
//  Copyright © 2018 sdl. All rights reserved.
//

import UIKit

class basicViewController: UIViewController {
    
    @IBOutlet weak var displayLbl: UILabel!
    var output = String()
    var firstValue = Float()
    var secondvalue = Float()
    var result = Float()
    var pointChack = false
    var plusOperation = false
    var minusOperation = false
    var multipleOperation = false
    var dividingOperation = false
    var percentOperation = false
    var signChangeOperation = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func allBtn(_ sender: UIButton) {
        if sender.tag == 0 {
            output += "0"
            displayLbl.text = output
        } else if sender.tag == 1 {
            output += "1"
            displayLbl.text = output
        } else if sender.tag == 2 {
            output += "2"
            displayLbl.text = output
        } else if sender.tag == 3 {
            output += "3"
            displayLbl.text = output
        } else if sender.tag == 4 {
            output += "4"
            displayLbl.text = output
        } else if sender.tag == 5 {
            output += "5"
            displayLbl.text = output
        } else if sender.tag == 6 {
            output += "6"
            displayLbl.text = output
        } else if sender.tag == 7 {
            output += "7"
            displayLbl.text = output
        } else if sender.tag == 8 {
            output += "8"
            displayLbl.text = output
        } else if sender.tag == 9 {
            output += "9"
            displayLbl.text = output
        } else if sender.tag == 10 {
            print(pointChack)
            if output == "" {
                if pointChack != true {
                    output += "0."
                    displayLbl.text = output
                    pointChack = true
                }
            } else {
                print("Else")
                if pointChack != true {
                    output += "."
                    displayLbl.text = output
                    pointChack = true
                }
            }
            
        } else if sender.tag == 11 {
            
            if plusOperation == true {
                secondvalue = Float(output)!
                result = firstValue + secondvalue
                firstValue = result
                output = String(result)
                displayLbl.text = output
                output = ""
            } else if minusOperation == true {
                secondvalue = Float(output)!
                result = firstValue - secondvalue
                firstValue = result
                output = String(result)
                displayLbl.text = output
                output = ""
            }
            else if multipleOperation == true {
                secondvalue = Float(output)!
                result = firstValue * secondvalue
                firstValue = result
                output = String(result)
                displayLbl.text = output
                output = ""
            }
            else if dividingOperation == true {
                secondvalue = Float(output)!
                result = firstValue / secondvalue
                firstValue = result
                output = String(result)
                displayLbl.text = output
                output = ""
            }
            else if percentOperation == true {
                //secondvalue = Float(output)!
                result = firstValue / 100
                firstValue = result
                output = String(result)
                displayLbl.text = output
                output = ""
                percentOperation = false
            }
            else if signChangeOperation == true {
                //secondvalue = Float(output)!
                
                
                
                result = firstValue * (-1)
                
                firstValue = result
                output = String(result)
                displayLbl.text = output
                output = ""
                signChangeOperation = false
            }
            
        } else if sender.tag == 12 {
            if output.isEmpty == false {
                firstValue = Float(output)!
            }
            output = ""
            pointChack = false
            displayLbl.text = output
            minusOperation = true
            plusOperation = false
            multipleOperation = false
            dividingOperation = false
            
            
        } else if sender.tag == 13 {
            if output.isEmpty == false {
                firstValue = Float(output)!
            }
            output = ""
            pointChack = false
            displayLbl.text = output
            plusOperation = true
            minusOperation = false
            multipleOperation = false
            dividingOperation = false
            
            
        } else if sender.tag == 14 {
            if output.isEmpty == false {
                firstValue = Float(output)!
            }
            output = ""
            pointChack = false
            displayLbl.text = output
            plusOperation = false
            minusOperation = false
            multipleOperation = true
            dividingOperation = false
        } else if sender.tag == 15 {
            if output.isEmpty == false {
                firstValue = Float(output)!
            }
            output = ""
            pointChack = false
            displayLbl.text = output
            plusOperation = false
            minusOperation = false
            multipleOperation = false
            dividingOperation = true
        } else if sender.tag == 16 {
            if output.isEmpty == false {
                firstValue = Float(output)!
            }
            output = ""
            pointChack = false
            displayLbl.text = output
            plusOperation = false
            minusOperation = false
            multipleOperation = false
            dividingOperation = false
            percentOperation = true
            signChangeOperation = false
            if percentOperation == true {
                //secondvalue = Float(output)!
                result = firstValue / 100
                firstValue = result
                output = String(result)
                displayLbl.text = output
                output = ""
                percentOperation = false
            }
            
        } else if sender.tag == 17 {
            if output.isEmpty == false {
                firstValue = Float(output)!
            }
            output = ""
            pointChack = false
            displayLbl.text = output
            plusOperation = false
            minusOperation = false
            multipleOperation = false
            dividingOperation = false
            percentOperation = false
            signChangeOperation = true
            if signChangeOperation == true {
                //secondvalue = Float(output)!
                
                
                
                result = firstValue * (-1)
                
                firstValue = result
                output = String(result)
                displayLbl.text = output
                output = ""
                signChangeOperation = false
            }
        } else if sender.tag == 18 {
            output = ""
            pointChack = false
            plusOperation = false
            minusOperation = false
            multipleOperation = false
            dividingOperation = false
            percentOperation = false
            signChangeOperation = false
            displayLbl.text = output
        }
    }
    
    
    
    
}

