//
//  TableViewController.swift
//  SimpleApp
//
//  Created by marek on 19.05.2019.
//  Copyright © 2019 Marek Garczewski. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var Amount: UILabel!
    @IBOutlet weak var Model: UILabel!
    @IBOutlet weak var Company: UILabel!
}
class TableViewController: UITableViewController, dataTransfer {

    var table = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test1 = Model(model: "Astra", company: "Opel", amount: 10)
        let test2 = Model(model: "Octavia", company: "Scoda", amount: 14)
        table.append(test1)
        table.append(test2)

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return table.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.Amount.text = table[indexPath.row].amount!.description 
        cell.Company.text = table[indexPath.row].company!
        cell.Model.text = table[indexPath.row].model!
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let destination = segue.destination as! ViewController
            destination.delegate = self as! dataTransfer
        }
    }
    @IBAction func addButtonClicked(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    func dataReceived(data: Model) {
        table.append(data)
        tableView.reloadData()
    }
}

