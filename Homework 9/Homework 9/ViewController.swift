//
//  ViewController.swift
//  Homework 9
//
//  Created by Joshua Goodman on 4/28/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func openSite(_ sender: Any) {
            if let url = URL (string: "https://www.nflshop.com/baltimore-ravens/t-36590255+z-9152346-3829362677?_s=google-ak1900nfl&adposition=&ks_id=6220_kw17153617&matchtype=be&msclkid=f01faa6c263711a971d1f4c44610a565&pcrid=14697292682&target=kwd-25708953857%3Aloc-190&utm_campaign=NFL+-+Team+Name+-+Baltimore+Ravens%7C264650704&utm_medium=ppc&utm_source=o&utm_term=baltimore+ravens") {
                UIApplication.shared.open(url, options: [:])
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myURL = URL(string:"https://www.baltimoreravens.com/stadium/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
    
}

