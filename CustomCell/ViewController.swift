//
//  ViewController.swift
//  CustomCell
//
//  Created by Saulo Garcia on 9/22/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let fruits = [Fruit(name: "Apples", image: #imageLiteral(resourceName: "apples")), Fruit(name: "Bananas", image: #imageLiteral(resourceName: "bananas")), Fruit(name: "Pear", image: #imageLiteral(resourceName: "pear")), Fruit(name: "Oranges", image: #imageLiteral(resourceName: "oranges")), Fruit(name: "Strawberries", image: #imageLiteral(resourceName: "strawberries"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addDataSource()
    }
    
    func addDataSource() {
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fruit = fruits[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "fruitCell", for: indexPath) as! FruitTableViewCell
        
        // update cell data
        cell.update(with: fruit)
        
        return cell
    }
}
