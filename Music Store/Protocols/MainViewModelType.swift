//
//  MainViewModelType.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit

protocol MainViewModelType {
    
    func numberOfItems() -> Int
    
    func cellViewModel(atIndexPath indexPath: IndexPath) -> CollectionCellViewModelType?
    
    func detailViewForSelectItem() -> DetailViewModelType?
    
    func selectItem(atIndexPath indexPath: IndexPath)
    
}
