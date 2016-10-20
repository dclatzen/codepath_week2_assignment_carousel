//
//  LoginViewController.swift
//  codepath_week2_assignment_carousel
//
//  Created by StudyBlue on 10/20/16.
//  Copyright © 2016 myself. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var signInScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signInScrollView.delegate = self
        signInScrollView.contentSize = signInScrollView.frame.size
        signInScrollView.contentInset.bottom = 100
    }


}
