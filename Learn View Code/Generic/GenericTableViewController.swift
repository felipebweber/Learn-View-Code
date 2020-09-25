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
//        tableView.dataSource = self
//        tableView.estimatedRowHeight = 100
//        tableView.rowHeight = UITableView.automaticDimension
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = NSStringFromClass(T.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
        cell.item = itens[indexPath.row]
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
//    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//        //return 180
//    }
//    
//    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        cell.layoutIfNeeded()
//    }
    
}
