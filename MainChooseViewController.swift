//
//  MainChooseViewController.swift
//  iWishServer
//
//  Created by Max Baumann on 14.04.17.
//  Copyright © 2017 Julius. All rights reserved.
//

import UIKit

class MainChooseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    var images: [UIImage] = []
    var headlines: [String] = []
    var descriptions: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [UIImage(named: "history")!, UIImage(named: "client")!, UIImage(named: "server")!, UIImage(named: "impressum")!]
        headlines = ["Letzte Einstellung", "Client Mode", "Server Mode", "Impressum"]
        descriptions = [
            "Line 1 \nLine 2 \nLine 3",
            "Line 1 \nLine 2 \nLine 3",
            "Line 1 \nLine 2 \nLine 3",
            "Line 1 \nLine 2 \nLine 3"
        ]
        
        self.tableview.delegate = self
        self.tableview.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row){
        case 0:
            performSegue(withIdentifier: "showClient", sender: self)
            break
        case 1:
            performSegue(withIdentifier: "showServer", sender: self)
            break
        case 2:
            performSegue(withIdentifier: "showClient", sender: self)
            break
        case 3:
            performSegue(withIdentifier: "showImpressum", sender: self)
            break
        default: break
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell") as! MainTableCell
        
        cell.ImageIcon.image = self.images[indexPath.row]
        cell.cell_headline.text = self.headlines[indexPath.row]
        cell.cell_description.text = self.descriptions[indexPath.row]
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
