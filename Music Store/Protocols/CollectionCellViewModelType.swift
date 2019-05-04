//
//  CollectionCellViewModelType.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import Foundation

protocol CollectionCellViewModelType: class {
    
    var name: String { get }
    var price: Int { get }
    var artist: String { get }
    var isFavorite: Bool { get }
    var image: String { get }
    
}
