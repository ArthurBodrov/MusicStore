//
//  DetailViewModelType.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 21/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import Foundation
import UIKit


protocol DetailViewModelType {
    
    var name: String { get }
    var price: String { get }
    var description: String { get }
    var releaseDate: String { get }
    var label: String { get }
    var artist: String { get }
    var isFavorite: Bool { get }
    var image: String { get }
    
    func increaseGood(button: UIButton, countOfGoodLabel: UILabel)
    
    func decreaseGood(button: UIButton, countOfGoodLabel: UILabel)
    
}
