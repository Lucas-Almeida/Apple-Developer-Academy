//
//  ViewController.swift
//  SlotMachine
//
//  Created by Lucas Pinheiro Almeida on 20/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var flagPicker: UIPickerView!
    @IBOutlet weak var gameState: UILabel!
    @IBOutlet weak var jogar: UIButton!
    
    var flags = [UIImage(named: "flag01"), UIImage(named: "flag02"), UIImage(named: "flag03")]
    
    
    @IBAction func randomRoll(_ sender: UIButton) {
        let random1 = Int(arc4random_uniform(UInt32(flags.count)))
        let random2 = Int(arc4random_uniform(UInt32(flags.count)))
        let random3 = Int(arc4random_uniform(UInt32(flags.count)))
        
        flagPicker.selectRow(random1, inComponent: 0, animated: true)
        flagPicker.selectRow(random2, inComponent: 1, animated: true)
        flagPicker.selectRow(random3, inComponent: 2, animated: true)
        
        if random1 == random2 && random1 == random3 {
            gameState.text = "You won!"
        } else {
            gameState.text = "You lose!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagPicker.dataSource = self
        flagPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return flags.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50.0
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let IV = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        IV.image = flags[row]
        IV.contentMode = .scaleToFill
        return IV
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(flags[row] ?? 0)
    }
}

