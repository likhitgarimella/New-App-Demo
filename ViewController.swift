//
//  ViewController.swift
//  KartAppDemo
//
//  Created by Likhit Garimella on 13/10/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Auth.auth().currentUser != nil   {   //This is for when the user, to take to the logged in screen, when he closes the app without logging out.
            self.presentLoggedInScreen()
        }
    }

    @IBAction func logintapped(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text
        {
            Auth.auth().signIn(withEmail: email, password: password, completion:  { (user, error) in
                
                if let firebaseError = error    {
                    print(firebaseError.localizedDescription)
                    return
                }
                
                self.presentLoggedInScreen()
                print("Success!")
                
            })
        }
        
    }
    
    
    @IBAction func createAccountTapped(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text
        {
            
            Auth.auth().createUser(withEmail: email, password: password, completion:  { (user, error) in

                if let firebaseError = error    {
                    print(firebaseError.localizedDescription)
                    return
                }
                
                self.presentLoggedInScreen()
                print("Success!")

            })
        
        }
        
    }
    
    func presentLoggedInScreen()    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LogInViewController: LogInViewController = storyboard.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        self.present(LogInViewController, animated: true, completion: nil)
    }
    
}

