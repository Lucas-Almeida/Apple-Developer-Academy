//
//  DetailsViewController.swift
//  ListaDeFilmes
//
//  Created by Lucas Pinheiro Almeida on 23/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var pokeTableView: UITableView!
    var selectedPokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokeTableView.delegate = self
        pokeTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension DetailsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokeDetails", for: indexPath) as! PokeDetailsTableViewCell
        if let myPokemon = selectedPokemon {
            cell.pokeNameDetails.text = myPokemon.name
            cell.pokeDescriptionDetails.text = myPokemon.description
            cell.pokeImageDetails.image = myPokemon.image
        } else {
            print("Deu ruim clã")
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1000.0
    }
}
