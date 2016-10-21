//
//  TimelineViewController.swift
//  codepath_week2_assignment_carousel
//
//  Created by StudyBlue on 10/20/16.
//  Copyright © 2016 myself. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

    @IBOutlet weak var timelineScrollView: UIScrollView!
    @IBOutlet weak var feedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timelineScrollView.contentSize = feedImageView.frame.size
        
    }

    
}
