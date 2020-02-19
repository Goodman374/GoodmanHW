//
//  ViewController.swift
//  InClassProject2
//
//  Created by Joshua Goodman on 2/10/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var CounterDisplay: UILabel!
    @IBOutlet weak var stepperInfo: UIStepper!
    @IBOutlet weak var sliderInfo: UISlider!
    @IBOutlet weak var mvpInput: UIImageView!
    @IBOutlet weak var segmentInfo: UISegmentedControl!
    
    @IBAction func stpperAction(_ sender: Any) {
        CounterDisplay.text = String(stepperInfo.value)
        sliderInfo.value = Float(stepperInfo.value)
        
        if stepperInfo.value > 50 {
            CounterDisplay.textColor = UIColor.blue
            
        }
        
    }
    
    @IBAction func mSBSLider(_ sender: Any) {
        if  segmentInfo.selectedSegmentIndex == 0 { mvpInput.isHidden = true
        } else {
            mvpInput.isHidden = false
        }
        
    }
    @IBAction func sliderAction(_ sender: Any) {
        CounterDisplay.text = String(sliderInfo.value)
        stepperInfo.value = Double(Float(sliderInfo.value))
        
        if sliderInfo.value > 50 {
            CounterDisplay.textColor = UIColor.orange
            
           
        }
        
    }
        
        func changColor() {
            if sliderInfo.value > 50 {
                CounterDisplay.textColor = UIColor.blue
            } else {
                CounterDisplay.textColor = UIColor.black
            }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


