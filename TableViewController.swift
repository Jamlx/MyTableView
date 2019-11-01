//
//  TableViewController.swift
//  MyTableView
//
//  Created by James Cavanaugh on 11/1/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var menuItems = HardwareItems()
    var myIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return menuItems.names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let row = indexPath.row
        
        cell.textLabel?.text = menuItems.names[row]
        
        let price = String(format:"$%2.2f", menuItems.prices[row])
        
        cell.detailTextLabel?.text = price
        
        if menuItems.specials[row]{
            cell.backgroundColor = UIColor.cyan
        }else{
            cell.backgroundColor = UIColor.white
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: menuItems.names[indexPath.row], message:"The price is: $" + String(format:"%2.2f", menuItems.prices[indexPath.row]), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated:true, completion:nil)
    }

}
