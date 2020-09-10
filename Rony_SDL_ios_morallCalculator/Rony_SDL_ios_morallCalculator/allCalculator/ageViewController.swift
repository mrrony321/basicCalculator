//
//  ViewController.swift
//  ageCalculator
//
//  Created by macOS_rony on 11/12/18.
//  Copyright © 2018 macOS_rony. All rights reserved.
//

import UIKit
var date = Date()
var calender = Calendar.current
//var acd = calender.component(T##component: Calendar.Component##Calendar.Component, from: date)
var day = calender.component(.day, from: date)

var month = calender.component(.month, from: date)
var year = calender.component(.year, from: date)

class ageViewController: UIViewController {
    
    @IBOutlet weak var currentDate: UITextField!
    @IBOutlet weak var currentMonth: UITextField!
    @IBOutlet weak var currentYear: UITextField!
    @IBOutlet weak var birthDate: UITextField!
    @IBOutlet weak var birthMonth: UITextField!
    @IBOutlet weak var birthYear: UITextField!
    
    @IBAction func calculate(_ sender: Any) {
        
        cy = Int(currentYear.text!)!
        cm = Int(currentMonth.text!)!
        cd = Int(currentDate.text!)!
        
        by = Int(birthYear.text!)!
        bm = Int(birthMonth.text!)!
        bd = Int(birthDate.text!)!
        if cd < bd{
            cd += 30
            cm -= 1
            
        }
        rd = cd - bd
        if cm < bm{
            cm += 12
            cy -= 1
        }
        rm = cm - bm
        
        ry = cy - by
        
        display.text = "\(ry) - \(rm) - \(rd)"
    }
    
    @IBOutlet weak var display: UILabel!
    var cy = 0, cm = 0, cd = 0 //c for current
    var by = 0, bm = 0, bd = 0// b for birth
    var ry=0, rm = 0, rd = 0 // r for result
    
    //var date = Data()
    //var calender = Calendar.current
    //var acd = self()
    //var autometicCurrentDate = calender.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentDate.text = String(day)
        currentMonth.text = String(month)
        currentYear.text = String(year)
    }
    
    
}

