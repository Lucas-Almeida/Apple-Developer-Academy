//
//  ViewController.swift
//  NavigationProject
//
//  Created by Lucas Pinheiro Almeida on 21/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(self.navigationItem.title!)
        print(self.title ?? 0)
        
        self.title = "Lucas"
        
        self.navigationController?.navigationBar.barTintColor = .red
        
        self.navigationController?.navigationItem.title = "Lucas" // aponta pro fundo da pilha, nao funciona
        
    }
}

