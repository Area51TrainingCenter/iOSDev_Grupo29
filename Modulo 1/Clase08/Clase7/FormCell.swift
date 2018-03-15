//
//  FormCell.swift
//  Clase7
//
//  Created by Alumno on 31/01/18.
//  Copyright © 2018 Area51 Training Center S.A.C. All rights reserved.
//

import UIKit

class FormCell: UITableViewCell {

    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var valor: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
