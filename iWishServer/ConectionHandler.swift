//
//  ConectionHandler.swift
//  iWishServer
//
//  Created by Julius on 12/04/2017.
//  Copyright © 2017 Julius. All rights reserved.
//

import Foundation

class ConectionHandler: NSObject {
    
    let port:Int
    
    init(port: Int) {
        self.port = port
    }
    
    func updateTitle() -> Array<Titel>{
        let t1 = Titel(titel: "titel1", artist: "artist1", album: "album1", count: 1)
        let t2 = Titel(titel: "titel2", artist: "artist2", album: "album2", count: 1)
        let t3 = Titel(titel: "titel3", artist: "artist3", album: "album3", count: 1)
        let t4 = Titel(titel: "titel4", artist: "artist4", album: "album4", count: 1)
        let t5 = Titel(titel: "titel5", artist: "artist5", album: "album5", count: 1)
        let t6 = Titel(titel: "titel6", artist: "artist6", album: "album6", count: 1)
        let t7 = Titel(titel: "titel7", artist: "artist7", album: "album7", count: 1)
        return [t1, t2, t3, t4, t5, t6, t7]
    }
}
