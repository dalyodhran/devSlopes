//
//  Product.swift
//  coder-swag
//
//  Created by Odhrán Daly on 12/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName:String) {
        self.imageName = imageName
        self.price = price
        self.title = title
    }
    
}
