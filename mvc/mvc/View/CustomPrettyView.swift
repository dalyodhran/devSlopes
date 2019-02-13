//
//  CustomPrettyView.swift
//  mvc
//
//  Created by Odhrán Daly on 13/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

@IBDesignable
class CustomPrettyView: UIView {

   
    override func awakeFromNib() {
        customizeView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.70
        backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.borderWidth = 5
    }
}
