//
//  ViewController.swift
//  AutoLayoutDesafio3
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
    
    lazy var firstWhiteView: UIView = {
        let newView = UIView()
        newView.backgroundColor = .white
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    lazy var secondWhiteView: UIView = {
       let newView = UIView()
        newView.backgroundColor = .white
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    override func viewWillLayoutSubviews() {
        // alinhar white views dentro de green view
        NSLayoutConstraint.activate([
            greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.55),
            greenView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),

            firstWhiteView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 20),
            firstWhiteView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -20),
            firstWhiteView.topAnchor.constraint(equalTo: greenView.topAnchor, constant: 20),
            
            secondWhiteView.widthAnchor.constraint(equalTo: firstWhiteView.widthAnchor),
            secondWhiteView.heightAnchor.constraint(equalTo: firstWhiteView.heightAnchor),
            secondWhiteView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 20),
            secondWhiteView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -20),
            secondWhiteView.topAnchor.constraint(equalTo: firstWhiteView.bottomAnchor, constant: 20),
            secondWhiteView.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: -20)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

