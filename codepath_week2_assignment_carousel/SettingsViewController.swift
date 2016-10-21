//
//  SettingsViewController.swift
//  codepath_week2_assignment_carousel
//
//  Created by StudyBlue on 10/20/16.
//  Copyright © 2016 myself. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {

    
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        settingsScrollView.contentSize = settingsImageView.frame.size
    }
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

}
