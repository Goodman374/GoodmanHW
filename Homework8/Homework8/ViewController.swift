//
//  ViewController.swift
//  Homework8
//
//  Created by Joshua Goodman on 4/14/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func foundTap(_ sender: Any) {
        outputLabel.text = "You're on your way to Meet Lamar Jackson!"
        
    }
    
    @IBAction func slideMe(_ sender: Any) {
          outputLabel.text = "You're on your way to Meet the Ravens!"
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

