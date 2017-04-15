//
//  ImpressumViewController.swift
//  iWishServer
//
//  Created by Dominic Drees on 15.04.17.
//  Copyright © 2017 Julius. All rights reserved.
//

import UIKit

class ImpressumViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webview.loadRequest(URLRequest(url: URL(string: "https://www.google.de")!))
        self.webview.reload()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
