//
//  Favorite.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 01/05/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import Foundation

class Favorite {
    
    var favorite: [Album] = []
    
    func addToFavorite(_ album: Album) {
        
        favorite.append(album)
        
    }
    
}
