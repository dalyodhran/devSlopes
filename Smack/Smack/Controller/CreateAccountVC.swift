//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Odhrán Daly on 22/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
