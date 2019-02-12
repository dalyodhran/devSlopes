//
//  DataService.swift
//  coder-swag
//
//  Created by Odhrán Daly on 12/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price:"$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price:"$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price:"$22", imageName: "hats03.png"),
        Product(title: "Devslopes Logo Snapback", price:"$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodies Gray", price:"$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodies Red", price:"$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodies white", price:"$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodies black", price:"$30", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price:"$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Gray", price:"$22", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt white", price:"$22", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt black", price:"$20", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo Shirt black", price:"$20", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()

    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITALS":
            return getDigitalGoods()
        default:
            return getHoodies()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
