//
//  Albums.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import Foundation

struct Album {
    
    var name: String
    var price: Int
    var artist: String
    var isFavorite: Bool
    var image: String
    var releaseDate: Int
    var label: String
    var description: String

    init(name: String, price: Int, artist: String, isFavorite: Bool = false, image: String, releaseDate: Int, label: String, description: String) {
        self.name = name
        self.price = price
        self.artist = artist
        self.isFavorite = isFavorite
        self.image = image
        self.releaseDate = releaseDate
        self.label = label
        self.description = description
    }
}
