//
//  BeerType.swift
//  BeerUI
//
//  Created by Connor A Murphy on 5/19/20.
//  Copyright © 2020 Connor A Murphy. All rights reserved.
//
import UIKit

//creating an Beer object 
class BeerType {
    var image: UIImage
    var text: [String] = []
    
    init(image: UIImage, text: [String]) {
        self.image = image
        self.text = text
    }
}
