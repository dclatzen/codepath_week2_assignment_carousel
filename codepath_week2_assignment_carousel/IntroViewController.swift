//
//  IntroViewController.swift
//  codepath_week2_assignment_carousel
//
//  Created by StudyBlue on 10/20/16.
//  Copyright © 2016 myself. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    // Do any additional setup after loading the view.
    
    override func viewDidLoad() {
        super.viewDidLoad()

        introScrollView.contentSize = introImageView.frame.size
        
        
    }


}
