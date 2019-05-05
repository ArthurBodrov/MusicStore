//
//  ViewController.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 20/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit
@IBDesignable

class MainView: UIViewController {

    //MARK: - @IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var shapeOfSortByNameFromAtoZ: UIImageView!
    
    @IBOutlet weak var shapeOfSortByNameFromZtoA: UIImageView!
    
    @IBOutlet weak var sortFromAtoZButton: UIButton!
    
    @IBOutlet weak var sortFromZtoAButton: UIButton!
    
    @IBOutlet weak var sortByPriceFromLowToHighButton: UIButton!
    
    @IBOutlet weak var sortByPriceFromHighToLowButton: UIButton!
    
    @IBOutlet weak var shapeOfSortByPriceFromLowToHigh: UIImageView!
    
    @IBOutlet weak var shapeOfSortByPriceFromHighToLow: UIImageView!
    
    @IBOutlet weak var sortByReleaseDateFromOldToNewButton: UIButton!
    
    @IBOutlet weak var sortByReleaseDateFromNewToOldButton: UIButton!
    
    @IBOutlet weak var shapeOfSortByReleaseDateFromNewToOld: UIImageView!
    
    @IBOutlet weak var shapeOfSortByReleaseDateFromOldToNew: UIImageView!
    
    //MARK: - @IBActions
    @IBAction func backToMainView(_ unwindSegue: UIStoryboardSegue){
        
    }
    
    @IBAction func searchButtonTapped(_ sender: Any) {
        
        let alertView = alertService.alert()
        
        present(alertView, animated: true)
    }
    
    @IBAction func favoriteButtonTapped(_ sender: Any) {
        
        let alertView = alertService.alert()
        
        present(alertView, animated: true)
    }
    
    @IBAction func addToBucketButtonTapped(_ sender: Any) {
        let alertView = alertService.alert()
        
        present(alertView, animated: true)
    }
    @IBAction func backButtonTapped(_ sender: Any) {
        let alertView = alertService.alert()
        
        present(alertView, animated: true)
    }
    
    
    @IBAction func sortNameFromAtoZButtonTapped(_ sender: Any) {
        mainViewModel?.sortByNameFromAtoZ()
        collectionView.reloadData()
        
        if shapeOfSortByNameFromAtoZ.isHidden {
            mainViewModel?.showButton(shapeOfSortByNameFromAtoZ, sortFromAtoZButton, blackArrowDown)
        }
        
        if shapeOfSortByNameFromZtoA.isHidden == false || shapeOfSortByPriceFromLowToHigh.isHidden == false ||
            shapeOfSortByPriceFromHighToLow.isHidden == false || shapeOfSortByReleaseDateFromOldToNew.isHidden == false ||
            shapeOfSortByReleaseDateFromNewToOld.isHidden == false {
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromZtoA, sortFromZtoAButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromHighToLow, sortByPriceFromHighToLowButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromLowToHigh, sortByPriceFromLowToHighButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromOldToNew, sortByReleaseDateFromOldToNewButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromNewToOld, sortByReleaseDateFromNewToOldButton, greyArrowDown)
            
        }
    }
    
    @IBAction func sortNamesFromZtoAButtonTapped(_ sender: Any) {
        mainViewModel?.sortByNameFromZtoA()
        collectionView.reloadData()
        
        if shapeOfSortByNameFromZtoA.isHidden {
            mainViewModel?.showButton(shapeOfSortByNameFromZtoA, sortFromZtoAButton, blackArrowUp)
        }
        if shapeOfSortByNameFromZtoA.isHidden == false || shapeOfSortByPriceFromLowToHigh.isHidden == false ||
            shapeOfSortByPriceFromHighToLow.isHidden == false || shapeOfSortByReleaseDateFromOldToNew.isHidden == false ||
            shapeOfSortByReleaseDateFromNewToOld.isHidden == false {
           
            mainViewModel?.hiddenButton(shapeOfSortByNameFromAtoZ, sortFromAtoZButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromHighToLow, sortByPriceFromHighToLowButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromLowToHigh, sortByPriceFromLowToHighButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromOldToNew, sortByReleaseDateFromOldToNewButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromNewToOld, sortByReleaseDateFromNewToOldButton, greyArrowDown)
            
        }
    }
    
    @IBAction func sortByPriceFromLowToHighButtonTapped(_ sender: Any) {
        mainViewModel?.sortByPriceFromLowToHigh()
        collectionView.reloadData()
        
        if shapeOfSortByPriceFromLowToHigh.isHidden {
            mainViewModel?.showButton(shapeOfSortByPriceFromLowToHigh, sortByPriceFromLowToHighButton, blackArrowDown)
            
        }
        
        if shapeOfSortByNameFromZtoA.isHidden == false || shapeOfSortByPriceFromLowToHigh.isHidden == false ||
            shapeOfSortByPriceFromHighToLow.isHidden == false || shapeOfSortByReleaseDateFromOldToNew.isHidden == false ||
            shapeOfSortByReleaseDateFromNewToOld.isHidden == false {
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromAtoZ, sortFromAtoZButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromHighToLow, sortByPriceFromHighToLowButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromZtoA, sortFromZtoAButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromOldToNew, sortByReleaseDateFromOldToNewButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromNewToOld, sortByReleaseDateFromNewToOldButton, greyArrowDown)
            
        }
    }
    
    
    @IBAction func sortByPriceFromHighToLowButtonTapped(_ sender: Any) {
        mainViewModel?.sortByPriceFromHighToLow()
        collectionView.reloadData()
        
        if shapeOfSortByPriceFromHighToLow.isHidden {
            mainViewModel?.showButton(shapeOfSortByPriceFromHighToLow, sortByPriceFromHighToLowButton, blackArrowUp)
        }
        
        if shapeOfSortByNameFromZtoA.isHidden == false || shapeOfSortByPriceFromLowToHigh.isHidden == false ||
            shapeOfSortByPriceFromHighToLow.isHidden == false || shapeOfSortByReleaseDateFromOldToNew.isHidden == false ||
            shapeOfSortByReleaseDateFromNewToOld.isHidden == false {
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromZtoA, sortFromZtoAButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromAtoZ, sortFromAtoZButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromLowToHigh, sortByPriceFromLowToHighButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromOldToNew, sortByReleaseDateFromOldToNewButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromNewToOld, sortByReleaseDateFromNewToOldButton, greyArrowDown)
            
        }
    }
    
    @IBAction func sortByReleaseDateFromNewToOldButtonTapped(_ sender: Any) {
        mainViewModel?.sortByReleaseDateFromNewToOld()
        collectionView.reloadData()
        
        if shapeOfSortByReleaseDateFromNewToOld.isHidden {
            mainViewModel?.showButton(shapeOfSortByReleaseDateFromNewToOld, sortByReleaseDateFromOldToNewButton, blackArrowDown)
        }
        if shapeOfSortByNameFromZtoA.isHidden == false || shapeOfSortByPriceFromLowToHigh.isHidden == false ||
            shapeOfSortByPriceFromHighToLow.isHidden == false || shapeOfSortByReleaseDateFromOldToNew.isHidden == false ||
            shapeOfSortByReleaseDateFromNewToOld.isHidden == false {
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromAtoZ, sortFromAtoZButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromHighToLow, sortByPriceFromHighToLowButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromZtoA, sortFromZtoAButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromOldToNew, sortByReleaseDateFromOldToNewButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromLowToHigh, sortByPriceFromLowToHighButton, greyArrowDown)
        }
        
    }
    
    @IBAction func sortByReleaseDateFromOldToNewButtonTapped(_ sender: Any) {
        mainViewModel?.sortByReleaseDateFromOldtoNew()
        collectionView.reloadData()
        
        if shapeOfSortByReleaseDateFromOldToNew.isHidden {
            mainViewModel?.showButton(shapeOfSortByReleaseDateFromOldToNew, sortByReleaseDateFromOldToNewButton, blackArrowUp)
        }
        
        if shapeOfSortByNameFromZtoA.isHidden == false || shapeOfSortByPriceFromLowToHigh.isHidden == false ||
            shapeOfSortByPriceFromHighToLow.isHidden == false || shapeOfSortByReleaseDateFromOldToNew.isHidden == false ||
            shapeOfSortByReleaseDateFromNewToOld.isHidden == false {
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromAtoZ, sortFromAtoZButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromHighToLow, sortByPriceFromHighToLowButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByNameFromZtoA, sortFromZtoAButton, greyArrowUp)
            
            mainViewModel?.hiddenButton(shapeOfSortByReleaseDateFromNewToOld, sortByReleaseDateFromNewToOldButton, greyArrowDown)
            
            mainViewModel?.hiddenButton(shapeOfSortByPriceFromLowToHigh, sortByPriceFromLowToHighButton, greyArrowDown)
            
        }
        
    }
    
    
    //MARK: - Variables
    
    var mainViewModel: MainViewModelType?
    
    //MARK: - Constans
    
    let alertService = AlertService()
    
    let blackArrowDown = "Combined Shape Copy 6"
    
    let greyArrowDown = "Combined Shape Copy 2"
    
    let blackArrowUp = "Combined Shape Copy 8"
        
    let greyArrowUp = "Combined Shape Copy"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainViewModel = MainViewModel()
    }
    
    
}

