//
//  WishListTableViewCell.swift
//  iWishServer
//
//  Created by Julius on 12/04/2017.
//  Copyright © 2017 Julius. All rights reserved.
//

import UIKit

class WishListTableViewCell: UITableViewCell {

    @IBOutlet weak var AlbumArt: UIImageView!
    @IBOutlet weak var SongTitle: UILabel!
    @IBOutlet weak var AlbumTitle: UILabel!
    @IBOutlet weak var ArtistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
