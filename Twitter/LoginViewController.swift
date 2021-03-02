//
//  LoginViewController.swift
//  Twitter
//
//  Created by John Smith V on 3/1/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // When the app is closed out and then opened back up this function is going to be called and check and see if the user is logged in
    override func viewDidAppear(_ animated: Bool) {
        if(UserDefaults.standard.bool(forKey: "userLoggedIn")) {
            // When this is true, we are going to segue directly to the home screen instead of asking the user to log in
            print("The user is logged in\n")
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        } else {
            print("The user is not logged in\n")
        }
    }
    
    // When the Login button is clicked, we are going to login in through the api call
    @IBAction func onLoginButton(_ sender: Any) {
        // Which URL we want to call, what happens when it succeds and what happens when it fails | oauth request token
        let authURL = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: authURL, success: {
            // We want to add a note in memory noting that the user is logged in, so do not login again
            UserDefaults.standard.set(true, forKey: "userLoggedIn")
            
            // When someone logs in successfully we want to go from the Login Screen to the Home Screen
            // We want to do a perform segue to the home controller which is called loginToHome
            self.performSegue(withIdentifier: "loginToHome", sender: self)
            
            
        }, failure: { (Error) in
            print("Error: Could not login\n")
        })
    }
    
    
}
