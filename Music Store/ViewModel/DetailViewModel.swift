//
//  DetailViewModel.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 21/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import Foundation
import UIKit

class DetailViewModel: DetailViewModelType {
    
    private var album: Album
    
    var name: String {
        return album.name
    }
    
    var price: String {
        return String(describing: album.price)
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
    
    var description: String {
        return album.description
    }
    
    var releaseDate: String {
        return String(describing: album.releaseDate)
    }
    
    var label: String {
        return album.label
    }
    
    init(album: Album) {
        self.album = album
    }
    
    var countOfGood: Int = 1
    
    func increaseGood(button: UIButton, countOfGoodLabel: UILabel) {
        countOfGood += 1
        if countOfGood == 2 {
            button.setImage(UIImage(named: "Combined Shape Copy 9"), for: .normal)
        }
        countOfGoodLabel.text = "\(countOfGood)"
    }
    
    func decreaseGood(button: UIButton, countOfGoodLabel: UILabel){
        if countOfGood == 1 {
            countOfGood = 1
            button.setImage(UIImage(named: "Combined Shape Copy 2"), for: .normal)
        } else {
            countOfGood -= 1
        }
        countOfGoodLabel.text = "\(countOfGood)"
    }
}
