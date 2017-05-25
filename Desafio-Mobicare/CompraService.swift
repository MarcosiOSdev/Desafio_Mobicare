//
//  CompraService.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 25/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

class CompraService: NSObject {
    
    var pacote:Pacote
    final let URL_MOCK = "http://mock-nox/post"
    init(pacote: Pacote) {
        self.pacote = pacote
    }
    
    
    func sendPacote(send: Bool){
        
        if !send {
            return
        }
        
        let deviceDescription = MobileUsuario()
        let json: [String: Any] = ["idKey": "asdsaXxasdaASsd",
                                   "mobileDescription": ["versao": deviceDescription.versao,
                                                         "modelo": deviceDescription.modelo,
                                                         "bateria": deviceDescription.bateria,
                                                         "nomeIphone": deviceDescription.nomeDoIphone],
                                   "pacote":["nome":pacote.nomePacote, "valor": pacote.valor]]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        print("Foi com o sucesso \(jsonData)" )
        
        //Criando Post
        let url = URL(string: URL_MOCK)!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        //Inserindo o JSON
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                //Resposta do envio
                print(responseJSON)
            }
        }
        
        task.resume() //apos criar , onde sera executado!
    }

}
