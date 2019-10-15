//
//  LogInViewController.swift
//  KartAppDemo
//
//  Created by Likhit Garimella on 15/10/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {
    
    @IBAction func logoutTapped(_ sender: Any) {
        
        do  {
            try Auth.auth().signOut()
            
            dismiss(animated: true, completion: nil)
            
        }   catch   {
            print("Error logging out!")
        }
        
    }
        
    
    @IBAction func buyTapped(_ sender: UIButton) {
        
        
        
    }
    
    
    @IBAction func sellTapped(_ sender: UIButton) {
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
