//
//  BoarderButton.swift
//  app-swoodh
//
//  Created by Odhrán Daly on 05/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class BoarderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
