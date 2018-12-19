//
//  ViewController.swift
//  AutoLayouts
//
//  Created by Lucas Pinheiro Almeida on 26/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var redView: UIView = {
        let newView = UIView()
        newView.backgroundColor = .red
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    lazy var blueView: UIView = {
        let newView = UIView()
        newView.backgroundColor = .blue
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    lazy var myButton: UIButton = {
        let button = UIButton()
        button.setTitle("THIS IS NOT THE GREATEST BUTTON IN THE WORLD OH NO IT IS JUST A TRIBUTE", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        blueView.addSubview(button)
        return button
    }()
    
    override func viewWillLayoutSubviews() {
        NSLayoutConstraint.activate([
//            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redView.widthAnchor.constraint(equalToConstant: 200),
//            redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            redView.heightAnchor.constraint(equalToConstant: 150),
            redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            //blue view constraints
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            blueView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            blueView.centerXAnchor.constraint(equalTo: redView.centerXAnchor),
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20),
            //button constraints
            myButton.centerXAnchor.constraint(equalTo: blueView.centerXAnchor, constant: 0),
            myButton.centerYAnchor.constraint(equalTo: blueView.centerYAnchor, constant: 0),
            myButton.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 0.95)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
//        blueView.top = 1.0 x suuperView.top + 70
//        blueView.width = 270
//        blueView.height = 150
//        blueView.centerX = 1.0 x superView.CenterX + 0

//        redView.height = 1.0 x blueView.height + 0
//        redView.width = 1.0 x blueView.width + 0
//        redView.centerX = 1.0 x blueView.centerX + 0
//        redView.top = 1.0 x blueView.top + 20
        
        
    }


}

