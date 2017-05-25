//
//  Pacote.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 23/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

struct Pacote {
    var nomePacote:String
    var valor:Double
    var imagem:UIImage
    var descricao:String
    
    init(nomePacote:String, valor:Double, imagem:UIImage, descricao:String) {
        self.nomePacote = nomePacote
        self.valor = valor
        self.imagem = imagem
        self.descricao = descricao        
    }
}
