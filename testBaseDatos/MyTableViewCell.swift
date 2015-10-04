//
//  MyTableViewCell.swift
//  testBaseDatos
//
//  Created by guitarrkurt on 15/07/15.
//  Copyright (c) 2015 guitarrkurt. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var etiquetaNombre: UILabel!
    @IBOutlet weak var etiquetaSalario: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
