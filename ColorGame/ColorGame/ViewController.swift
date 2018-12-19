//
//  ViewController.swift
//  ColorGame
//
//  Created by Lucas Pinheiro Almeida on 20/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var randomView: UIImageView!
    @IBOutlet weak var playerView: UIImageView!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

