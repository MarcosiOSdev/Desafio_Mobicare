//
//  ViagemTableViewCell.swift
//  Desafio-Mobicare
//
//  Created by Marcos Felipe Souza on 23/05/17.
//  Copyright © 2017 Marcos. All rights reserved.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

    @IBOutlet weak var foto: UIImageView!
    
    @IBOutlet weak var nomeDescritivo: UILabel!
    
    @IBOutlet weak var valor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    

}
