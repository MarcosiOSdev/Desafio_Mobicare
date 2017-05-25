//
//  UIImage+Styles.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 23/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

extension UIImage {
    
    func resizeForTableView(){
        let scale = 50 / self.size.width
        let newHeight = self.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: 50, height: newHeight))
        self.draw(in: CGRect(x: 0, y: 0, width: 50, height: newHeight))
    }
    
    
}
