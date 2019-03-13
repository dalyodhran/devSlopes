//
//  roundedButton.swift
//  Smack
//
//  Created by Odhrán Daly on 26/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

@IBDesignable
class roundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }

}
