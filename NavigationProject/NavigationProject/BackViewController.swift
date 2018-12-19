//
//  BackViewController.swift
//  NavigationProject
//
//  Created by Lucas Pinheiro Almeida on 21/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class BackViewController: UIViewController {


    @IBAction func didTapButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
