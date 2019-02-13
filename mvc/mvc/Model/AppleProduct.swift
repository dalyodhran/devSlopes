//
//  AppleProduct.swift
//  mvc
//
//  Created by Odhrán Daly on 13/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import Foundation

class AppleProduct{
    
    private(set) public var name : String
    private(set) public var color: String
    private(set) public var price: Double
    
    init(name: String, color: String, price: Double) {
        self.name = name
        self.color = color
        self.price = price
    }
}
