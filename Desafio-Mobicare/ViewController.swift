//
//  ViewController.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 23/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var pacoteDAO = PacoteDAO.shared
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if traitCollection.forceTouchCapability == .available && (tableView != nil){
            registerForPreviewing(with: self, sourceView: tableView)
        }
        styleNavigationBar()
    }
    
    func styleNavigationBar(){
        if let navigation = navigationController {
            
            navigation.navigationBar.barTintColor = UIColor.black //Barra
            navigation.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white] // titulo
            navigation.navigationBar.tintColor = UIColor.corEmRGB(rgbValue: 0x009688) // Botao de Voltar
        }
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pacoteDAO.qtdPacotes()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ViagensCell") as! ViagemTableViewCell
        let pacote = pacoteDAO.pacoteBy(index: indexPath.row)
        
        //Formatar valor de acordo com o Pais
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let number = NSNumber(value: pacote.valor)
        
        //Popular dados na Cel
        cell.valor.text = formatter.string(from: number)
        cell.nomeDescritivo.text = pacote.nomePacote
        cell.foto.image = pacote.imagem
        cell.foto.aroundImagem()
        
        //ADD Cor na Cel
        let corSelecao = UIView()
        corSelecao.backgroundColor = UIColor.corEmRGB(rgbValue: 0x009688)
        cell.selectedBackgroundView = corSelecao

        return cell;
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let pacote = pacoteDAO.pacoteBy(index: indexPath.row)
        let detalheView = DetalhesPacoteViewController(pacote: pacote)
        
        if let navigation = navigationController {
            navigation.pushViewController(detalheView, animated: true)
        }
    }

}


//Apenas para iphone acima de 6S com Toch3D
extension ViewController: UIViewControllerPreviewingDelegate {
    
    //peek
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        guard let indexPath = tableView.indexPathForRow(at: location),
            let cell = tableView.cellForRow(at: indexPath) else {
                return nil
        }
        
        let pacote = self.pacoteDAO.pacoteBy(index: indexPath.row)
        let detalheView = DetalhesPacoteViewController(pacote: pacote)
        
        detalheView.preferredContentSize = CGSize(width: 0, height: 0)
        previewingContext.sourceRect = cell.frame
        
        return detalheView
    }
    
    //pop
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController){
        if let navigation = navigationController {
            navigation.show(viewControllerToCommit, sender: nil)
        }
        
    }
    
}

