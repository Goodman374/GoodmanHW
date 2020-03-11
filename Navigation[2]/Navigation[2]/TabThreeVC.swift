//
//  TabThreeVC.swift
//  Navigation[2]
//
//  Created by Joshua Goodman on 3/11/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit

class TabThreeVC: UIViewController {

    @IBAction func subtractOne(_ sender: Any) {
        
        (parent as! ManagementTabVC).counter-=1
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
