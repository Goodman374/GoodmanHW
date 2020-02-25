//
//  ViewController.swift
//  InClassProject3
//
//  Created by Joshua Goodman on 2/14/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var frameView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    
    @IBAction func button1(_ sender: Any) {
        if (frameView.isAnimating){
            frameView.stopAnimating()
        }else{
            frameView.startAnimating()
        }
    }
    
    @IBAction func setSpeed(_ sender: Any) {
        frameView.animationDuration=TimeInterval(3.0-speedSlider.value)
        frameView.startAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let hopAnimation: [UIImage] = [
            UIImage(named: "frame-1")!,
            UIImage(named: "frame-2")!,
            UIImage(named: "frame-3")!,
            UIImage(named: "frame-4")!,
            UIImage(named: "frame-5")!,
            UIImage(named: "frame-6")!,
            UIImage(named: "frame-7")!,
            UIImage(named: "frame-8")!,
            UIImage(named: "frame-9")!,
            UIImage(named: "frame-10")!,
            UIImage(named: "frame-11")!,
            UIImage(named: "frame-12")!,
            UIImage(named: "frame-13")!,
            UIImage(named: "frame-14")!,
            UIImage(named: "frame-15")!,
            UIImage(named: "frame-16")!,
            UIImage(named: "frame-17")!,
            UIImage(named: "frame-18")!,
            UIImage(named: "frame-19")!,
            UIImage(named: "frame-20")!,
        ]
        
        frameView.animationImages=hopAnimation
        frameView.animationDuration=1.0
    }


}

