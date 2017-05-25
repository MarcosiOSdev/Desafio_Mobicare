//
//  DetalhesPacoteViewController.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 23/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

class DetalhesPacoteViewController: UIViewController {

    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var valorLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UITextView!
    
    var pacote:Pacote
    
    init(pacote: Pacote) {
        self.pacote = pacote
        super.init(nibName: "DetalhesPacoteViewController", bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        popularView()
        navigationBarStyle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func navigationBarStyle(){
        self.title = "Detalhes"
        let comprarBtn = UIBarButtonItem(title: "Comprar", style: .plain, target: self, action: #selector(realizarCompra))
        comprarBtn.tintColor = UIColor.corEmRGB(rgbValue: 0x009688)
        navigationItem.rightBarButtonItems = [comprarBtn]
    }
    

    func popularView(){
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let number = NSNumber(value: pacote.valor)
        
        imagem.image = self.pacote.imagem
        nomeLabel.text = self.pacote.nomePacote
        valorLabel.text = formatter.string(from: number)
        descricaoLabel.text = self.pacote.descricao
    }
    
    func realizarCompra() {
        let versao = UIDevice.current.systemVersion
        let bateria = UIDevice.current.batteryLevel
        let nomeDoIphone = UIDevice.current.name
        let modelo = UIDevice.current.model
        
        print("A compra foi feita do \(pacote.nomePacote)")
        print("Versao do iphone : \(versao), modelo: \(modelo), bateria \(bateria), nome do iphone: \(nomeDoIphone)" )
        
        
        let compraService = CompraService(pacote: pacote)
        compraService.sendPacote(send: false)
    }
    

}
