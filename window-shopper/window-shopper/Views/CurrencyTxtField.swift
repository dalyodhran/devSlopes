//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Odhrán Daly on 11/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        
        let currancyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currancyLbl.backgroundColor = #colorLiteral(red: 0.9446123838, green: 0.938996911, blue: 0.9489287734, alpha: 0.8)
        currancyLbl.textAlignment = .center
        currancyLbl.textColor = #colorLiteral(red: 0.2033190727, green: 0.2033599317, blue: 0.2033137083, alpha: 1)
        currancyLbl.layer.cornerRadius = 5.0
        currancyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currancyLbl.text = formatter.currencySymbol
        addSubview(currancyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
        
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
