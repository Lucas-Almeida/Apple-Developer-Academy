//
//  ViewController.swift
//  DesafiosAutoLayout
//
//  Created by Lucas Pinheiro Almeida on 27/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var greenView: UIView = {
        let newView = UIView()
        newView.backgroundColor = .green
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    override func viewWillLayoutSubviews() {
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.topAnchor),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

