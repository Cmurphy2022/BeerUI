//
//  BeerCell.swift
//  BeerUI
//
//  Created by Connor A Murphy on 5/19/20.
//  Copyright © 2020 Connor A Murphy. All rights reserved.
//

import UIKit

//Table view cell controller for beer object
class BeerCell: UITableViewCell {

    @IBOutlet weak var imageViewObject: UIImageView!
    @IBOutlet weak var textOne: UILabel!
    @IBOutlet weak var textTwo: UILabel!
    @IBOutlet weak var textThree: UILabel!
    
    func setBeer(beer: BeerType) {
        imageViewObject.image = beer.image
        textOne.text = beer.text[0]
        textTwo.text = beer.text[1]
        textThree.text = beer.text[2]
    }
}
