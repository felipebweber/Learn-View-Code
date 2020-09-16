//
//  TestStackViewViewController.swift
//  Learn View Code
//
//  Created by Felipe Weber on 14/09/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import UIKit

class TestStackViewViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        stackView()
    }


    private func stackView() {
        let viewLeft = UIView()
        viewLeft.backgroundColor = .blue
        let viewRigh = UIView()
        viewRigh.backgroundColor = .red
        
        let viewStackView = UIStackView(arrangedSubviews: [viewLeft, viewRigh])
        viewStackView.distribution = .fillEqually
        viewStackView.axis = .horizontal
        view.addSubview(viewStackView)
        viewStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .zero, size: CGSize(width: view.frame.width, height: view.frame.height))
    }
}
