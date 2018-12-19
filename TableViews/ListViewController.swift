//
//  ListViewController.swift
//  TableViews
//
//  Created by Lucas Pinheiro Almeida on 22/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
//        list.append(movie)
        // Do any additional setup after loading the view.
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableCell", for: indexPath) as! CustomTableViewCell
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85.0
    }
}

class Movie {
    var image: UIImage
    var title: String
    var alreadyWatched: Bool
    
    init(image: UIImage, title: String, alreadyWatched: Bool) {
        self.image = image
        self.title = title
        self.alreadyWatched = alreadyWatched
    }
}
