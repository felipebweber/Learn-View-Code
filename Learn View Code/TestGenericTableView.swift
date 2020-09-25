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
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Avenir Black", size: 17)
        return label
    }()
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Avenir Medium", size: 12)
        label.textColor = .red
        return label
    }()
    
    override func setupView() {
        super.setupView()
        
        let marginGuide = contentView.layoutMarginsGuide
        contentView.addSubview(titleLabel)
        /* Essas restrições eram preciso antes de colocar a stackView
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true
        titleLabel.numberOfLines = 0
         */
        
        contentView.addSubview(descriptionLabel)
        /* Essas restrições eram preciso antes de colocar a stackView
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        descriptionLabel.numberOfLines = 0
         */
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        stackView.distribution = .fill
        stackView.axis = .vertical
        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true
        
        /* Essa parte funcionava antes de colocar as celulas
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        stackView.distribution = .fill
        stackView.axis = .vertical
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 0.0, left: 6.0, bottom: 0.0, right: 6.0))
         */
    }
}

class TestGenericTableView: GenericTableViewController<TestCell, DataCell> {
    
    private var dataCell = [DataCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "This is a title"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: nil, action: nil)
        creatDataCell()
        itens = dataCell
    }
    
    private func creatDataCell() {
        dataCell.append(DataCell(title: "This is a one title", description: "This is a one description"))
        dataCell.append(DataCell(title: "This is a second title", description: "This is a second description"))
        dataCell.append(DataCell(title: "This is a third title", description: "This is a third description This is a third description This is a third description This is a third description This is a third description This is a third description This is a third description This is a third description This is a third description This is a third description This is a third description "))
        dataCell.append(DataCell(title: "This is a fourth title", description: "This is a fourth description"))
    }
}
