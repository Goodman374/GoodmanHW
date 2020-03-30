//
//  TVViewController.swift
//  Homework6
//
//  Created by Joshua Goodman on 3/30/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit

class TVViewController: UIViewController {

    @IBOutlet weak var upVoteCounter: UILabel!
    @IBOutlet weak var downVoteCounter: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
           upVoteCounter.text = String ((parent as! TBViewController).yesVote)
         
         downVoteCounter.text = String ((parent as! TBViewController).noVote)
        
        if (parent as! TBViewController).yesVote > (parent as! TBViewController).noVote
        {
            winner.text = "Yes!"
        }else {
            winner.text = "No!"
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
