//
//  AlertView.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 01/05/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit

class AlertView: UIViewController {

    @IBOutlet weak var subview: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    
    
   
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        decorationElements()
    }
    
    func decorationElements(){
        
        self.subview.layer.cornerRadius = 15
        self.subview.layer.masksToBounds = true
        
        
        self.backButton.layer.cornerRadius = 15
        self.backButton.layer.masksToBounds = true
        
    }
    

}
