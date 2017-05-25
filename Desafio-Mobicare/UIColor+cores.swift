//
//  UIColor+cores.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 24/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

extension UIColor {

    static func corEmRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
