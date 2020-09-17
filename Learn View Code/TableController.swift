//
//  TableController.swift
//  Learn View Code
//
//  Created by Felipe Weber on 16/09/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import UIKit

class TableController: UITableViewController {
    
    private var dataCell = [DataCell]()
    
    override func viewDidLoad() {
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        creatDataCell()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCell.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.dataCell = dataCell[indexPath.row]
        return cell
    }
    
    private func creatDataCell() {
        dataCell.append(DataCell(title: "This is a one title", description: "This is a one description"))
        dataCell.append(DataCell(title: "This is a second title", description: "This is a second description"))
        dataCell.append(DataCell(title: "This is a third title", description: "This is a third description"))
        dataCell.append(DataCell(title: "This is a fourth title", description: "This is a fourth description"))
    }
}
