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
    
    var titleList:Array<Titel> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WishListTable.tableFooterView = UIView()
        load()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func load() {
        
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
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let more = UITableViewRowAction(style: .normal, title: "Infos") { action, index in
            print("more button tapped")
        }
        more.backgroundColor = .blue
        
        let remove = UITableViewRowAction(style: .normal, title: "Löschen") { action, index in
            print("remove button tapped")
        }
        remove.backgroundColor = .red
        
        return [remove, more]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WishListCell") as! WishListTableViewCell
        cell.AlbumArt.image = UIImage(named: "Songlist")
        cell.AlbumTitle.text = titleList[indexPath.row].album
        cell.ArtistName.text = titleList[indexPath.row].artist
        cell.SongTitle.text = titleList[indexPath.row].titel
        return cell
    }

}
