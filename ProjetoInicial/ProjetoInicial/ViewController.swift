//
//  ViewController.swift
//  ProjetoInicial
//
//  Created by Lucas Pinheiro Almeida on 14/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myApp: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func changeLabel(_ sender: UIButton) {
        myApp.text = textField.text
    }
    
    func loadImages() -> [UIImage] {
        var result = [UIImage]()
        for i in 0...10 {
            if let image = UIImage(named: "disintegrate0\(i)") {
                result.append(image)
            }
        }
        return result
    }
//    var myImage
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        myImage.image = UIImage(named: "Bidu")
//        myImage.isUserInteractionEnabled = true
//        myImage.animationImages = loadImages()
//        myImage.animationDuration = 1.5
//        myImage.startAnimating()
//
//        view.backgroundColor = UIColor(cgColor: GL_RED as! CGColor)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

