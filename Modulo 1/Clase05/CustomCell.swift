//
//  CustomCell.swift
//  Clase05
//
//  Created by alumno on 26/01/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var control: UISegmentedControl!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
