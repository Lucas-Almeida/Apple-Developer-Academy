//
//  SecondViewController.swift
//  Navigation Code
//
//  Created by Lucas Pinheiro Almeida on 21/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var labelColor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myLabel.text = labelColor
        
        switch myLabel.text {
        case "Red":
            myLabel.textColor = .red
        case "Green":
            myLabel.textColor = .green
        case "Blue":
            myLabel.textColor = .blue
        default:
            myLabel.textColor = .black
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
