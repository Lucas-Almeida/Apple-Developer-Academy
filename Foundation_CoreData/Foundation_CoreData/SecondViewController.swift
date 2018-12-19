//
//  SecondViewController.swift
//  Foundation_CoreData
//
//  Created by Lucas Pinheiro Almeida on 30/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var person: UITextField!
    
    @IBAction func save(_ sender: UIButton) {
        let p = Person(context: CoreDataManager.context)
        p.name = person.text
        CoreDataManager.saveContext()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
