//
//  ViewController.swift
//  FinalProject
//
//  Created by Joshua Goodman on 5/4/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func openSite1(_ sender: Any) {
        if let url = URL(string: "https://en.wikipedia.org/wiki/Lamar_Jackson") {
            UIApplication.shared.open(url, options: [:])
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

