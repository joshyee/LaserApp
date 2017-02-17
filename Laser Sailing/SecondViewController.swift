//
//  SecondViewController.swift
//  Laser Sailing
//
//  Created by Josh Yee on 7/12/2016.
//  Copyright © 2016 Performance Sailcraft Australia. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let laserSailingURL = URL(string: "http://www.lasersailing.com.au")
        let laserSailingURLRequest = URLRequest(url: laserSailingURL!)
        webView.loadRequest(laserSailingURLRequest)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func goForward(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func goBack(_ sender: Any) {
        webView.goForward()
    }
    
}


