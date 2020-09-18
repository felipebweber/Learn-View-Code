//
//  GenericTableViewController.swift
//  Learn View Code
//
//  Created by Felipe Weber on 9/18/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import UIKit

class GenericTableViewController<T: GenericTableViewCell<U>, U>: UITableViewController {
    var itens = [U]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let reuseIdentifier = NSStringFromClass(T.self)
        tableView.register(T.self, forCellReuseIdentifier: reuseIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = NSStringFromClass(T.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
        cell.textLabel?.text = "O meu deus que delicia"
        return cell
    }
    
}
