//
//  WishListViewController.swift
//  iWishServer
//
//  Created by Julius on 12/04/2017.
//  Copyright © 2017 Julius. All rights reserved.
//

import UIKit

class WishListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var WishListTable: UITableView!
    
    let con = ConectionHandler()
    var titleList:Array<Titel> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        load()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func load() {
        titleList.append(contentsOf: con.updateTitle())
    }
    
    func reload(){
        load()
        WishListTable.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleWishListCell") as! WishListTableViewCell
        cell.AlbumTitle.text = titleList[indexPath.row].album
        cell.ArtistName.text = titleList[indexPath.row].artist
        cell.SongTitle.text = titleList[indexPath.row].titel
        return cell
    }

}
