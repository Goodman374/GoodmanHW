//
//  SRVeiwController.swift
//  FinalProject
//
//  Created by Joshua Goodman on 5/5/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit

class SRVeiwController: UITabBarController {

    @IBAction func RayLewisVote(_ sender: Any) {
        (parent as! SRVeiwController).RayLewisVote+=1
    }
    @IBAction func EdReedVote(_ sender: Any) {
        (parent as! SRVeiwController).EdReedVote+=1
    }
    @IBAction func LamarVote(_ sender: Any) {
        (parent as! SRVeiwController).LamarVote+=1
    }
    
    
    
    var EdReedVote: Int = 0
    var RayLewisVote: Int = 0
    var LamarVote: Int = 0
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
