//
//  MobileUsuario.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 25/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

struct MobileUsuario {
    var versao:String
    var bateria:String
    var nomeDoIphone:String
    var modelo:String
    
    init() {
        versao = UIDevice.current.systemVersion
        bateria = UIDevice.current.batteryLevel.description
        nomeDoIphone = UIDevice.current.name
        modelo = UIDevice.current.model
    }
    
}
