//
//  AlertService.swift
//  Music Store
//
//  Created by  Arthur Bodrov on 01/05/2019.
//  Copyright © 2019  Arthur Bodrov. All rights reserved.
//

import UIKit

class AlertService {
    
    func alert() -> AlertView {
        
        let storyboard = UIStoryboard(name: "AlertStoryboard", bundle: .main)
        
        let alertView = storyboard.instantiateViewController(withIdentifier: "Alert") as! AlertView
        
        return alertView
    }
    
}
