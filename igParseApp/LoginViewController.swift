//
//  LoginViewController.swift
//  igParseApp
//
//  Created by paul on 9/20/18.
//  Copyright © 2018 PoHung Wang. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //user logout once reach login view
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        PFUser.logInWithUsername(inBackground: usernameField.text!, password: passwordField.text!){
            (user: PFUser?, error: Error?) in
            if user != nil{
                print("You're Login")
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let newUser = PFUser()
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        
        newUser.signUpInBackground { (success: Bool, error: Error?) in
            if success{
                print("Yay, created a user!")
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }else{
                print(error?.localizedDescription)
            }
        }
    }
    

}
