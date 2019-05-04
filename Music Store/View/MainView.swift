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
    
    
    //MARK: - Variables
    
    var mainViewModel: MainViewModelType?
    
    //MARK: - Constans
    
    let alertService = AlertService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainViewModel = MainViewModel()
    }

    
}

