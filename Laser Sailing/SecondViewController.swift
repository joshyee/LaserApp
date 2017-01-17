//
//  SecondViewController.swift
//  Laser Sailing
//
//  Created by Josh Yee on 7/12/2016.
//  Copyright © 2016 Performance Sailcraft Australia. All rights reserved.
//

import UIKit
import GoogleMaps

class SecondViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView.layer.shadowOpacity = 0.5
        menuView.layer.shadowRadius = 4
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        if(menuShowing) {
            leadingConstraint.constant = 320
        } else {
            leadingConstraint.constant = 190
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
        menuShowing = !menuShowing
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
