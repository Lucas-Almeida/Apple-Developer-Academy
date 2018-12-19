//
//  ViewController.swift
//  AutoLayoutDesafio4
//
//  Created by Lucas Pinheiro Almeida on 27/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var clearButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Clear", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.tintColor = .black
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        return button
    }()
    
    lazy var addLineButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Add Line", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.tintColor = .black
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        return button
    }()
    
    override func viewWillLayoutSubviews() {
        NSLayoutConstraint.activate([
            clearButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            clearButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            clearButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            clearButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05),
            
            addLineButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            addLineButton.topAnchor.constraint(equalTo: clearButton.topAnchor),
            addLineButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            addLineButton.leadingAnchor.constraint(equalTo: clearButton.trailingAnchor, constant: 20),
            addLineButton.widthAnchor.constraint(equalTo: clearButton.widthAnchor),
            addLineButton.heightAnchor.constraint(equalTo: clearButton.heightAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

