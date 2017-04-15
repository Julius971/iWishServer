//
//  AppDelegate.swift
//  iWishServer
//
//  Created by Julius on 12/04/2017.
//  Copyright © 2017 Julius. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var con: ConnectionHandler?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Get initial Views from Storyboards
        let songlistview: UIViewController = UIStoryboard(name: "SongListStoryBoard", bundle: Bundle.main).instantiateInitialViewController()!
        let wishlistview: UIViewController = UIStoryboard(name: "WishListStoryBoard", bundle: Bundle.main).instantiateInitialViewController()!
        let settingsview: UIViewController = UIStoryboard(name: "SettingsStoryBoard", bundle: Bundle.main).instantiateInitialViewController()!
        
        // Create TabBarItems
        let songtabitem: UITabBarItem = UITabBarItem(title: "Songlist", image: UIImage(named: "Songlist"), selectedImage: UIImage(named: "Songlist"))
        let wishtabitem: UITabBarItem = UITabBarItem(title: "Wishlist", image: UIImage(named: "Wishlist"), selectedImage: UIImage(named: "Wishlist"))
        let settingstabitem: UITabBarItem = UITabBarItem(title: "Settings", image: UIImage(named: "Settings"), selectedImage: UIImage(named: "Settings"))
        
        // Set TabBarItems from View
        songlistview.tabBarItem = songtabitem
        wishlistview.tabBarItem = wishtabitem
        settingsview.tabBarItem = settingstabitem
        
        // Create TabBarController
        let tabbarview = UITabBarController()
        tabbarview.viewControllers = [songlistview, wishlistview, settingsview]
        self.window?.rootViewController = tabbarview
        
        //initialize connectionHandler
        con = ConnectionHandler(port: 1337)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}


}

