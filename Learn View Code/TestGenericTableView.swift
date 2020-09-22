//
//  TestGenericTableView.swift
//  Learn View Code
//
//  Created by Felipe Weber on 9/18/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import UIKit

class TestCell: GenericTableViewCell<DataCell> {
    override var item: DataCell! {
        didSet {
            titleLabel.text = item.title
            descriptionLabel.text = item.description
        }
    }
    
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    
    override func setupView() {
        super.setupView()
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 0.0, left: 6.0, bottom: 0.0, right: 6.0))
    }
}

class TestGenericTableView: GenericTableViewController<TestCell, DataCell> {
    
    private var dataCell = [DataCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "This is a title"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: nil, action: nil)
        tableView.rowHeight = 60
        creatDataCell()
        itens = dataCell
    }
    
    private func creatDataCell() {
        dataCell.append(DataCell(title: "This is a one title", description: "This is a one description"))
        dataCell.append(DataCell(title: "This is a second title", description: "This is a second description"))
        dataCell.append(DataCell(title: "This is a third title", description: "This is a third description"))
        dataCell.append(DataCell(title: "This is a fourth title", description: "This is a fourth description"))
    }
}
