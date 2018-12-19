//
//  ViewController.swift
//  Navigation Code
//
//  Created by Lucas Pinheiro Almeida on 21/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func red(_ sender: UIButton) {
        performSegue(withIdentifier: "id", sender: "Red")
    }
    
    @IBAction func green(_ sender: UIButton) {
        performSegue(withIdentifier: "id", sender: "Green")
    }
    
    @IBAction func blue(_ sender: UIButton) {
        performSegue(withIdentifier: "id", sender: "Blue")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? SecondViewController {
            controller.labelColor = sender as? String
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

