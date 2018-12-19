//
//  ViewController.swift
//  AutoLayoutDesafio1
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
    
    lazy var redView: UIView = {
        let newView = UIView()
        newView.backgroundColor = .red
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    override func viewDidLayoutSubviews() {
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),

            redView.leadingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: 20),
            redView.widthAnchor.constraint(equalTo: greenView.widthAnchor),
            redView.topAnchor.constraint(equalTo: greenView.topAnchor),
            redView.bottomAnchor.constraint(equalTo: greenView.bottomAnchor),
            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

