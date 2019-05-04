//
//  CollectionCellViewModel.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import Foundation

class CollectionCellViewModel: CollectionCellViewModelType {
    
    private var album: Album
    
    var name: String {
        return album.name
    }
    
    var price: Int {
        return album.price
    }
    
    var artist: String {
        return album.artist
    }
    
    var isFavorite: Bool {
        return album.isFavorite
    }
    
    var image: String {
        return album.image
    }

    
    init(album: Album){
        self.album = album
    }
}
