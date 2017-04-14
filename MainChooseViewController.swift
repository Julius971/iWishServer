//
//  MainChooseViewController.swift
//  iWishServer
//
//  Created by Max Baumann on 14.04.17.
//  Copyright © 2017 Julius. All rights reserved.
//

import UIKit

class MainChooseViewController: UIViewController {

    @IBOutlet weak var buttonStartClient: UIButton!
    @IBOutlet weak var buttonStartServer: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonStartClient.addTarget(self, action: #selector(MainChooseViewController.startClient), for: .touchUpInside)
        buttonStartServer.addTarget(self, action: #selector(MainChooseViewController.startServer), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func startClient(){
        self.performSegue(withIdentifier: "showClient", sender: self)
    }
    
    func startServer(){
        self.performSegue(withIdentifier: "showServer", sender: self)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
