//
//  currencyViewController.swift
//  allCalculator
//
//  Created by macOS_rony on 11/30/18.
//  Copyright © 2018 macOS_rony. All rights reserved.
//

import UIKit

class currencyViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var usd: UILabel!
    @IBOutlet weak var pound: UILabel!
    @IBOutlet weak var uae: UILabel!
    @IBOutlet weak var rupe: UILabel!
    @IBOutlet weak var npr: UILabel!
    var usdCal = 0.0
    var poundCal = 0.0
    var uaeCal = 0.0
    var rupeCal = 0.0
    var nprCal = 0.0
    
    @IBAction func calculate(_ sender: Any) {
        usdCal = Double(input.text!)! * 0.012
        poundCal = Double(input.text!)! * 0.0094
        uaeCal = Double(input.text!)! * 0.044
        rupeCal = Double(input.text!)! * 0.83
        nprCal = Double(input.text!)! * 1.83
        usd.text = "\(usdCal)$"
        pound.text = "\(poundCal)$"
        uae.text = "\(uaeCal)$"
        rupe.text = "\(rupeCal)$"
        npr.text = "\(nprCal)$"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //usd.text = "\(usdCal)$"
        //pound.text = "\(poundCal)$"
        //uae.text = "\(uaeCal)$"
        //rupe.text = "\(rupeCal)$"
        //npr.text = "\(nprCal)$"
        //usd.text = input.text

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
