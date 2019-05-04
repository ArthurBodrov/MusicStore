//
//  MainViewModel.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit

class MainViewModel: MainViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var albums: [Album] = [
        Album(name: "Fly me to the Moon", price: 20, artist: "Questa noche", image: "Fly", releaseDate: 2017, label: "Warner", description: ""),
        Album(name: "Violin Classics No. 1", price: 25, artist: "Antonio", image: "Violin", releaseDate: 2017, label: "Warner", description: ""),
        Album(name: "Q42 - Piano intense", price: 25, artist: "Questa noche", image: "Q42", releaseDate: 2017, label: "Warner", description: ""),
        Album(name: "Storms in the middle of", price: 20, artist: "Andrea Casco", image: "Storm", releaseDate: 2017, label: "Warner", description: ""),
        Album(name: "Violin Classics No. 1", price: 20, artist: "Antonio", image: "Violin2", releaseDate: 2017, label: "Warner", description: ""),
        Album(name: "Los Pamperos muchachos", price: 19, artist: "Questa noche", image: "Los", releaseDate: 2017, label: "Warner", description: "")
    ]
    
    func numberOfItems() -> Int {
        return albums.count
    }
    
    func cellViewModel(atIndexPath indexPath: IndexPath) -> CollectionCellViewModelType? {
        let album = albums[indexPath.row]
        
        return CollectionCellViewModel(album: album)
    }
    
    func detailViewForSelectItem() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        print(DetailViewModel(album: albums[selectedIndexPath.row]))
        return DetailViewModel(album: albums[selectedIndexPath.row])
    }
    
    
    func selectItem(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
    
}
