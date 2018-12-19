//
//  PokeDetailsTableViewCell.swift
//  ListaDeFilmes
//
//  Created by Lucas Pinheiro Almeida on 23/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import UIKit

class PokeDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeImageDetails: UIImageView!
    @IBOutlet weak var pokeNameDetails: UILabel!
    @IBOutlet weak var pokeDescriptionDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
