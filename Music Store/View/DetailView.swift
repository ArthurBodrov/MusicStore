//
//  DetailView.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 21/04/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit

class DetailView: UIViewController {

    
    //MARK: - IBOutlets
    @IBOutlet weak var albumImage: UIImageView!
    
    @IBOutlet weak var albumName: UILabel!
    
    @IBOutlet weak var artist: UILabel!
    
    @IBOutlet weak var releaseDate: UILabel!
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var addToBucketButton: UIButton!
    
    //MARK: - IBActions
    
   
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
    
    
    //MARK: - Variables
    
    var detailViewModel: DetailViewModelType?
    
    
    let alertService = AlertService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailViewModel = detailViewModel else { return }
        print(detailViewModel.artist)
        self.albumImage.image = UIImage(named: detailViewModel.image)
        print(detailViewModel.image)
        self.albumName.text = detailViewModel.name
        self.artist.text = detailViewModel.artist
        self.labelName.text = detailViewModel.label
        self.releaseDate.text = "\(detailViewModel.releaseDate)"
        self.descriptionLabel.text = detailViewModel.description
        self.priceLabel.text = "$\(detailViewModel.price)"
       
        decorationAddToBucketButton()
    }
    
    func decorationAddToBucketButton(){
        addToBucketButton.layer.cornerRadius = 15
        addToBucketButton.layer.masksToBounds = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
