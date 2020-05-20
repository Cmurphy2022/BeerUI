//
//  BeerListScreen.swift
//  BeerUI
//
//  Created by Connor A Murphy on 5/19/20.
//  Copyright © 2020 Connor A Murphy. All rights reserved.
//

import UIKit


class BeerListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    //creating an array of BeerTypes
    var beers : [BeerType] = []
    let characteristics = ["Hops", "ABV", "Taste"]
    
    func createArray() -> [BeerType] {
        var temp : [BeerType] = []
        
        let beer1 = BeerType(image: #imageLiteral(resourceName: "IPA"), text: characteristics)
        let beer2 = BeerType(image: #imageLiteral(resourceName: "budlight"), text: characteristics)
        let beer3 = BeerType(image: #imageLiteral(resourceName: "stout"), text: characteristics)
        
        temp.append(beer1)
        temp.append(beer2)
        temp.append(beer3)
        
        return temp
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beers = createArray()
        //setting the current class as delegate to fire off the delegate methods
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
}

//conforming to table view protocols
extension BeerListScreen: UITableViewDelegate, UITableViewDataSource {
    //stubs for UITableViewDelegate, number of rows to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }
    
    //creating a cell and giving it data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //sets beer to the current index in the beers array of BeerType
        let beer = beers[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeerCell") as! BeerCell
        
        cell.setBeer(beer: beer)
        return cell
    }
    
}
