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
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // declare variables for animation
    
    var fieldParentInitialY: CGFloat!
    var fieldParentOffset: CGFloat!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signInScrollView.delegate = self
        signInScrollView.contentSize = signInScrollView.frame.size
        signInScrollView.contentInset.bottom = 100
        
        // initialize variables for animation
        
        fieldParentInitialY = fieldParentView.frame.origin.y
        fieldParentOffset = -170
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -250
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
            // animate fields and button up
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            self.fieldParentView.frame.origin.y = self.fieldParentInitialY + self.fieldParentOffset
            }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
            // animate fields and button down
            self.buttonParentView.frame.origin.y = self.buttonInitialY
            self.fieldParentView.frame.origin.y = self.fieldParentInitialY
        }
    // end viewDidLoad
    }
    
    @IBAction func didTapBackground(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    @IBAction func didPressSignIn(_ sender: AnyObject) {
        
        activityIndicator.startAnimating()
        
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            
            delay(1, closure: {
                
                self.activityIndicator.stopAnimating()
                
                // create the alert with an alert controller (main message)
                let alertController = UIAlertController(title: "Please try again", message: "Your email and/or password is blank.", preferredStyle: .alert)
                
                // define an action (what should the button say?)
                let okayAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    // what should happen when the button is pressed
                }
                
                // add the action to the controller
                alertController.addAction(okayAction)
                
                // present the alert controller
                self.present(alertController, animated: true)
            })
            
        } else if emailTextField.text == "qwert" && passwordTextField.text == "asdf" {
            activityIndicator.stopAnimating()
            performSegue(withIdentifier: "tutorialSegue", sender: nil)
            
        } else {
            
            activityIndicator.stopAnimating()
            
            // create the alert
            let alertController = UIAlertController(title: "Not quite", message: "Your email and password combo do not match our files.", preferredStyle: .alert)
            
            // create the alert button
            let tryAgainAction = UIAlertAction(title: "Try Again", style: .default, handler: { (action) in
                
            })
            
            // add action to controller
            alertController.addAction(tryAgainAction)
            
            // present the alert
            present(alertController, animated: true)
            
        }
        // end didPressSignIn
    }
    
    
    @IBAction func textFieldChanged(_ sender: AnyObject) {
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            
            
        }
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
