//
//  ViewController.swift
//  mvc
//
//  Created by Odhrán Daly on 13/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var iphoneNameLabel: UILabel!
    @IBOutlet weak var iphoneColorLabel: UILabel!
    @IBOutlet weak var iphonePriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appleProduct = AppleProduct(name: "iPhone x", color: "Space Gray", price: 999.99)
        
        iphoneNameLabel.text = appleProduct.name
        iphoneColorLabel.text = "in \(appleProduct.color)"
        iphonePriceLabel.text = "$\(appleProduct.price)"
     }


}

