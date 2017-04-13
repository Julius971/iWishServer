//
//  Titel.swift
//  iWishServer
//
//  Created by Julius on 12/04/2017.
//  Copyright © 2017 Julius. All rights reserved.
//

import Foundation

class Titel {
    var titel:String, artist:String, album:String, count:Int, time:Date
    
    init(titel:String, artist:String, album:String, count:Int = 0) {
        self.titel = titel
        self.artist = artist
        self.album = album
        self.count = count
        self.time = Date()
        
    }
}
