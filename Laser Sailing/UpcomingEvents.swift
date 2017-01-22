//
//  UpcomingEvents.swift
//  Laser Sailing
//
//  Created by Josh Yee on 22/1/17.
//  Copyright © 2017 Performance Sailcraft Australia. All rights reserved.
//

import Foundation

import UIKit

class UpcomingEvents: UIViewController {
    
    @IBOutlet weak var upcomingEventsView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let laserEventsURL = URL(string: "http://www.lasersailing.com.au/events")
        let laserEventsURLRequest = URLRequest(url: laserEventsURL!)

        upcomingEventsView.loadRequest(laserEventsURLRequest)
        
    }
    
    
}
