//
//  Extension.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit

extension MainView: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Album", for: indexPath) as? AlbumsCollectionCell
        
        guard let collectionCell = cell,
        let mainViewModel = mainViewModel
            else { return UICollectionViewCell() }
        
        let cellViewModel = mainViewModel.cellViewModel(atIndexPath: indexPath)
    
        collectionCell.cellViewModel = cellViewModel
        
        return collectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainViewModel?.numberOfItems() ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let mainViewModel = mainViewModel else { return }
        mainViewModel.selectItem(atIndexPath: indexPath)
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let mainViewModel = mainViewModel else { return }
        
        if identifier == "detailSegue" {
            if let destination = segue.destination as? DetailView {
                destination.detailViewModel = mainViewModel.detailViewForSelectItem()
            }
        }
    }
    
}

