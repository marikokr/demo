//
//  ViewController.swift
//  Mytestproject
//
//  Created by Mariko Kurioka Rohde on 22/11/2016.
//  Copyright © 2016 Mariko Kurioka Rohde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logInOutButton: UIButton!
    
    // Text strings
    let loginPrompt  = "Log in"
    let logoutPrompt = "Log out"
    
    // Variables
    var isLoggedIn = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print ("ViewController did load")
        updateLogInOutButtonTitle()
    }


    @IBAction func logInOutButtonTapped(_ sender: Any) {
        print("LogInOutButton was tapped")
        // This is a small bug fix
        if isLoggedIn {
            isLoggedIn = false
            // Here we log out
        } else {
            isLoggedIn = true
            // Here we log in
        }
        updateLogInOutButtonTitle()
    }
    
    func updateLogInOutButtonTitle() {
        if isLoggedIn {
            logInOutButton.setTitle(logoutPrompt, for: .normal)
        } else {
            logInOutButton.setTitle(loginPrompt, for: .normal)
        }
        // NEW FEATURE SUCKS!
        // blabla
    }

}

