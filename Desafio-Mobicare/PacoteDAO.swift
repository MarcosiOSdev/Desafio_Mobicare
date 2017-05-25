//
//  BaseDados.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 23/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

final class PacoteDAO: NSObject {
    
    private var pacotes : [Pacote] = []
    
    static let shared = PacoteDAO();
    
    override init() {
        super.init()
        self.criarBase()        
    }
    
    func qtdPacotes() -> Int {
        return pacotes.count
    }
    
    func pacoteBy(index: Int) -> Pacote{
        return pacotes[index];
    }
    
    
    func criarBase(){
        
        var pacote = Pacote(nomePacote: "Buenos Aires",
                            valor: 200,
                            imagem: UIImage(named:"buenos aires.jpg")!,
                            descricao: "Uma viagem para divertir com sua familia e amigos")
        pacotes.append(pacote)
        
        
        pacote = Pacote(nomePacote: "Chile",
                        valor: 250,
                        imagem: UIImage(named:"chile.jpg")!,
                        descricao: "Faça uma viagem radical, onde pode esquiar na neve, fazer tours em montanhas de gelo e sentir o frio do lugar e o calor dos fulcões.")
        pacotes.append(pacote)
        
        
        pacote = Pacote(nomePacote: "Fortaleza",
                        valor: 5220,
                        imagem: UIImage(named:"fortaleza.jpg")!,
                        descricao: "Lugares de praia para relaxar. Quem procura relaxar esse pacote é o melhor ! ! ")
        pacotes.append(pacote)
        
        
        
        
        pacote = Pacote(nomePacote: "Frankfurt",
                        valor: 52250,
                        imagem: UIImage(named:"frankfurt.jpg")!,
                        descricao: "Não contém descrição, apenas vai e informa-nos o quanto divertiu nos pacotes que inclue um hotel , um carro alugado, tours pela cidade e uma grande ida a Berlin !\n Numa cidade incrivel ")
        pacotes.append(pacote)
        
        
        pacote = Pacote(nomePacote: "Londres",
                        valor: 17250.80,
                        imagem: UIImage(named:"london.jpg")!,
                        descricao: "Londres é um lugar romantico , bonito e um otimo lugar para você conhecer pessoas de diversas localidade.\nLugar onde as pessoas se divertem e são simpaticas.")
        pacotes.append(pacote)
        
        
        pacote = Pacote(nomePacote: "Madrid",
                        valor: 12220,
                        imagem: UIImage(named:"madrid.jpg")!,
                        descricao: "Hablas spanhois ? Entao deve ir para a Cidade do Futebol e conhecer o grandioso estadio Bernabeu.\nClarooo !!! Conhecer tambem suas culturas.")
        pacotes.append(pacote)
        
        
        pacote = Pacote(nomePacote: "Paris",
                        valor: 14500,
                        imagem: UIImage(named:"paris.jpg")!,
                        descricao: "Pacote Paris é mais que bela ! Um lugar lindo e bastante romantico com excelentes Tours. Conhece a cidade toda e todos os lugares sem se preocupar")
        pacotes.append(pacote)
        
        
        pacote = Pacote(nomePacote: "Recife",
                        valor: 3400,
                        imagem: UIImage(named:"recife.jpeg")!,
                        descricao: "Recife, um lugar turistico, bonito, com muitas emoções.\nLugar onde as pessoas se divertem e são simpaticas.")
        pacotes.append(pacote)
        
        pacote = Pacote(nomePacote: "Roma",
                        valor: 15000.20,
                        imagem: UIImage(named:"roma.jpg")!,
                        descricao: "Mamamiaaa, mais qui bela ! .\nVa conhecer roma e se admirar com a historia e cultura do lugar e nao ligue para onde vai ficar ! Neste pacote contem um quatro ate para 4 pessoas :)")
        pacotes.append(pacote)
        
        
        pacote = Pacote(nomePacote: "Santa Catarina",
                        valor: 2500.20,
                        imagem: UIImage(named:"santa_catarina.jpeg")!,
                        descricao: "Santa Catarina um lugar rico de beleza e cheia de povos de diferente lugar, muita gente informa que parece que não esta no Brasil ! Você tem que conhecer !.")
        pacotes.append(pacote)
        
        
        pacote = Pacote(nomePacote: "Veneza",
                        valor: 15000.20,
                        imagem: UIImage(named:"veneza.jpg")!,
                        descricao: "Veneza é um lugar muito romantico, lugar onde voce deve levar alguem que vc ama muito para conhecer.\nLugar onde as pessoas se divertem e são simpaticas.")
        pacotes.append(pacote)
        
        
        
        
    }
}
