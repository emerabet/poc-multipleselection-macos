//
//  ItemTableViewCell.swift
//  pocTableviewSelect
//
//  Created by MERABET Eric on 15/06/2020.
//  Copyright © 2020 MERABET Eric (Canal Plus Stagiaire). All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected) {
            self.accessoryType = .checkmark
        } else {
            self.accessoryType = .none
        }
    }
}
