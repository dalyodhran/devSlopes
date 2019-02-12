//
//  CatagoryCell.swift
//  coder-swag
//
//  Created by Odhrán Daly on 12/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
