//
//  LabelAutoSizeViewController.swift
//  Learn View Code
//
//  Created by Felipe Weber on 9/23/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import UIKit

class LabelAutoSizeViewController: UIViewController {

    lazy var labelAutoSize: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .darkGray
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        label.text = "Xcode is an integrated development environment (IDE) for macOS containing a suite of software development tools developed by Apple for developing software for macOS, iOS, iPadOS, watchOS, and tvOS. It was first released in 2003; the latest stable release is version 12.0, released on September 16, 2020, and is available via the Mac App Store free of charge for macOS Catalina users.[4] Registered developers can download preview releases and prior versions of the suite through the Apple Developer website.[5] Xcode includes Command Line Tools (CLT), which enable UNIX-style development via the Terminal app in macOS;[6] they can also be downloaded and installed without the main IDE."
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(labelAutoSize)
        labelAutoSize.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        labelAutoSize.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelAutoSize.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
    }


}
