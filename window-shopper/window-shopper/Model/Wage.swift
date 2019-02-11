//
//  Wage.swift
//  window-shopper
//
//  Created by Odhrán Daly on 11/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
