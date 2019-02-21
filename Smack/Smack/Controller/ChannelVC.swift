//
//  ChannelVC.swift
//  Smack
//
//  Created by Odhrán Daly on 21/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
    

    

}
