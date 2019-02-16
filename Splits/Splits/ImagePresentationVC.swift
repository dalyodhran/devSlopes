//
//  ImagePresentationVC.swift
//  Splits
//
//  Created by Odhrán Daly on 16/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class ImagePresentationVC: UIViewController {

    
    @IBOutlet weak var itemImageView: UIImageView!
    
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        itemImageView.image = image
    }

    

}

