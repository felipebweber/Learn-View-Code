//
//  GenericTableViewCell.swift
//  Learn View Code
//
//  Created by Felipe Weber on 9/18/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import UIKit

class GenericTableViewCell<U>: UITableViewCell {
    var item: U!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    func setupView() {}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
