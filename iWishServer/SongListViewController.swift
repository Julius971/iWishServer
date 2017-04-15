//
//  SongListViewController.swift
//  iWishServer
//
//  Created by Julius on 15/04/2017.
//  Copyright © 2017 Julius. All rights reserved.
//

import UIKit

class SongListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: SongListCollectionView!
    var titles:Array<Titel> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        load()
        // Do any additional setup after loading the view.
    }
    
    func load(){
        titles.append(Titel(titel: "Titel1", artist: "Artist1", album: "Album1"))
        titles.append(Titel(titel: "Titel2", artist: "Artist2", album: "Album2"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    //func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //
    //}
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SampleSongListCell", for: indexPath) as! SongListCollectionViewCell
        cell.Title.text = titles[indexPath.row].titel
        
        return cell
    }

}
