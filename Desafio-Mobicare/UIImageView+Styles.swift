//
//  UIImageView+Styles.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 23/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func aroundImagem(){
        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }

    

}
