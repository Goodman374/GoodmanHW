//
//  TBViewController.swift
//  FinalProject
//
//  Created by Joshua Goodman on 5/5/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit

class TBViewController: UITabBarController {

    @IBOutlet weak var RLVoteCounter: UILabel!
    @IBOutlet weak var ERVoteCounter: UILabel!
    @IBOutlet weak var LJVoteCounter: UILabel!
    @IBOutlet weak var Winner: UILabel!
    
    

    
    override func viewWillAppear(_ animated: Bool) {
        
        RLVoteCounter.text = String((parent as! SRVeiwController).RayLewisVote)
           
        ERVoteCounter.text = String((parent as! SRVeiwController).EdReedVote)
        
        LJVoteCounter.text = String((parent as! SRVeiwController).LamarVote)
        
        if (parent as! SRVeiwController).RayLewisVote > (parent as! SRVeiwController).EdReedVote
        {
            Winner.text = "Ray Lewis"
        }else{
            Winner.text = "Ed Reed or Lamar Jackson"
        }
    
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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
