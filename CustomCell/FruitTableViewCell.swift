//
//  FruitTableViewCell.swift
//  CustomCell
//
//  Created by Saulo Garcia on 9/22/20.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var fruitNameLabel: UILabel!    
    
    func update(with fruit: Fruit) {
        fruitNameLabel.text = fruit.name
        fruitImageView.image = fruit.image
    }
    
}
