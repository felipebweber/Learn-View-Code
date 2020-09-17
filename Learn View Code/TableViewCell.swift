//
//  TableViewCell.swift
//  Learn View Code
//
//  Created by Felipe Weber on 16/09/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var dataCell: DataCell? {
        didSet {
            titleLabel.text = dataCell?.title
            descriptionLabel.text = dataCell?.description
        }
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Black", size: 14)
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Medium", size: 11)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 0.0, left: 4.0, bottom: 0.0, right: 4.0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
