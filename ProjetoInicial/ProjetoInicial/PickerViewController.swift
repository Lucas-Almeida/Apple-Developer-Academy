//
//  PickerViewController.swift
//  ProjetoInicial
//
//  Created by Lucas Pinheiro Almeida on 19/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController {
    @IBOutlet weak var picker: UIPickerView!
    var countries = ["Brasil", "Japão", "Venezuela", "Alemanha", "EUA", "Canadá"]
    var cities = ["Fortaleza", "Tokyo", "Honduras", "Berlim", "Washington", "Toronto"]
    
    var flags = [UIImage(named: "flag01"), UIImage(named: "flag02")]
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func didChoose(_ sender: UIDatePicker) {
        print(sender.date)
    }
    
//    func loadImages() -> [UIImage] {
//        var result = [UIImage]()
//        for i in 0...10 {
//            if let image = UIImage(named: "flag0\(i)") {
//                result.append(image)
//            }
//        }
//        return result
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        picker.dataSource = self
        picker.delegate = self
        datePicker.datePickerMode = .date
        
        self.imageView.image = UIImage(named: "flag01")
    }
}

extension PickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {        
        return component == 0 ? flags.count : cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return component == 0 ? countries[row] : cities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> UIImage?
    {
        return flags[row]
    }
}
