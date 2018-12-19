//
//  PokemonTableViewCell.swift
//  ListaDeFilmes
//
//  Created by Lucas Pinheiro Almeida on 23/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    var name: String
    var image: UIImage
    
    init(image: UIImage, name: String) {
        self.image = image
        self.name = name
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
