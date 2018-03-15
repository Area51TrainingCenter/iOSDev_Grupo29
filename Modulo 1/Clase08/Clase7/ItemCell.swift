//
//  ItemCell.swift
//  Clase7
//
//  Created by Alumno on 2/02/18.
//  Copyright © 2018 Area51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var nameLista: UILabel!
    @IBOutlet weak var precioLista: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
