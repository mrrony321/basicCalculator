//
//  ViewController.swift
//  bmiCalculator
//
//  Created by macOS_rony on 11/14/18.
//  Copyright © 2018 macOS_rony. All rights reserved.
//

import UIKit

class bmiViewController: UIViewController {
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!
    var height = 0.0
    var weight = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    @IBAction func calculate(_ sender: Any) {
        height = Double(inputHeight.text!)! * 0.0254
        weight = Double(inputWeight.text!)!
        var result = weight / (height * height)
        print(result)
        if result < 18.5 {
            output.text = "not healthy at all"
        }
        else if result >= 18.5 && result <= 24.9{
            output.text = "normal"
        }
        else if result >= 25 && result <= 29.9{
            output.text = "overweight"
        }
        else if result >= 30{
            output.text = "excessive weight"
        }
        // fill this as assingment
        
    }
    
    @IBOutlet weak var output: UILabel!
}

