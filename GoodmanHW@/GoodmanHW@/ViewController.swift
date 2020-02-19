//
//  ViewController.swift
//  GoodmanHW@
//
//  Created by Joshua Goodman on 2/6/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var POBInput: UITextField!
    @IBOutlet weak var TOFInput: UITextField!
    @IBOutlet weak var ASInput: UITextField!
    
    var madlibTemplate : String = "Date <Date> <name> is sick with <part of body> flu. Drink more <type of fluid> and take <a substance> as needed."
    
    @IBOutlet weak var outputText: UITextField!
    
    @IBAction func clickToPrint(_ sender: UIButton){
 
        outputText.text = madlibTemplate.replacingOccurrences(of: "<Date>", with: dateInput.text!)
        
        outputText.text = "Date " + dateInput.text! + " "+nameInput.text! + " is sick with " + POBInput.text! + " flu. Drink more " + TOFInput.text! + " and take" + ASInput.text! + " as needed."
        //output text = outputtext
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

