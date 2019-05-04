//
//  AlbumsCollectionCell.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit

class AlbumsCollectionCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var albumName: UILabel!
    
    @IBOutlet weak var artistName: UILabel!
    
    @IBOutlet weak var albumImage: UIImageView!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var backgroundShape: UIImageView!
    
    @IBOutlet weak var detailButton: UIButton!
    
    //MARK: - IBActions
    @IBAction func likeButtonTapped(_ sender: UIButton) {
    }
    
    
    weak var cellViewModel: CollectionCellViewModelType? {
        willSet (cellViewModel){
            guard let cellViewModel = cellViewModel else { return }
            albumName.text = cellViewModel.name
            artistName.text = cellViewModel.artist
            albumImage.image = UIImage(named: cellViewModel.image)
            priceLabel.text = "$\(cellViewModel.price)"
        
        }
    }
}
