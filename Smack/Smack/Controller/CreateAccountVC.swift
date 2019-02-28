//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Odhrán Daly on 22/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailText.text, emailText.text != "" else {
            return
        }
        guard let pass = passText.text, passText.text != "" else {
            return
        }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        print("Logged in user", AuthService.instance.authToke)
                    }
                })
            }
        }
    }
    @IBAction func chooseAvatarPressed(_ sender: Any) {
        
    }
    @IBAction func pickBGColorPressed(_ sender: Any) {
        
    }
}
