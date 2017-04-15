//
//  MainTableCellTableViewCell.swift
//  iWishServer
//
//  Created by Dominic Drees on 15.04.17.
//  Copyright © 2017 Julius. All rights reserved.
//

import UIKit

class MainTableCell: UITableViewCell {
    @IBOutlet weak var ImageIcon: UIImageView!
    @IBOutlet weak var cell_headline: UILabel!
    @IBOutlet weak var cell_description: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
