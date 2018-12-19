//
//  ListViewController.swift
//  ListaDeFilmes
//
//  Created by Lucas Pinheiro Almeida on 23/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var pokemonTableView: UITableView!
    
    var pokemons = [Pokemon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
        pokemons.append(Pokemon(image: UIImage(named: "charizard")!, name: "Charizard", description: "Fire"))
        pokemons.append(Pokemon(image: UIImage(named: "machamp")!, name: "Machamp", description: "Rock"))
        pokemons.append(Pokemon(image: UIImage(named: "clefairy")!, name: "Clefairy", description: "Singing"))
        pokemons.append(Pokemon(image: UIImage(named: "pikachu")!, name: "Pikachu", description: "Eletric"))
        pokemons.append(Pokemon(image: UIImage(named: "voltorb")!, name: "Voltorb", description: "Eletric"))
        
        // Do any additional setup after loading the view.
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemon", for: indexPath) as! ListTableViewCell
        
        let pokemon = pokemons[indexPath.row]
        cell.pokemonDescription.text = pokemon.description
        cell.pokemonName.text = pokemon.name
        cell.pokemonImage.image = pokemon.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemon = pokemons[indexPath.row]
        performSegue(withIdentifier: "detailsSegue", sender: pokemon)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? DetailsViewController {
            controller.selectedPokemon = sender as? Pokemon
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokedex"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190.0
    }
}
