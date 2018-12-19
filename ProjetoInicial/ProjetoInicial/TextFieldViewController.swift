//
//  TextFieldViewController.swift
//  ProjetoInicial
//
//  Created by Lucas Pinheiro Almeida on 19/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    @IBOutlet weak var myTextField3: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.myTextField.resignFirstResponder()
        self.myTextField2.resignFirstResponder()
        self.myTextField3.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return range.upperBound != 20
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTextField.delegate = self
        myTextField2.delegate = self
        myTextField3.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
