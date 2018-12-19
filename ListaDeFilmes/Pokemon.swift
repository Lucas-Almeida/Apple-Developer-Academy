//
//  Pokemon.swift
//  ListaDeFilmes
//
//  Created by Lucas Pinheiro Almeida on 23/11/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import Foundation
import UIKit

class Pokemon {
    var name: String
    var image: UIImage
    var description: String
    
    init(image: UIImage, name: String, description: String) {
        self.image = image
        self.name = name
        self.description = description
    }
}
