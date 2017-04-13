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


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let songlistview: UIViewController = UIStoryboard(name: "SongListStoryBoard", bundle: Bundle.main).instantiateInitialViewController()!
        let wishlistview: UIViewController = UIStoryboard(name: "WishListStoryBoard", bundle: Bundle.main).instantiateInitialViewController()!
        let settingsview: UIViewController = UIStoryboard(name: "SettingsStoryBoard", bundle: Bundle.main).instantiateInitialViewController()!
        
        let songtabitem: UITabBarItem = UITabBarItem(title: "Songlist", image: UIImage(named: "Songlist"), selectedImage: UIImage(named: "Songlist"))
        let wishtabitem: UITabBarItem = UITabBarItem(title: "Songs", image: UIImage(named: "Songlist"), selectedImage: UIImage(named: "Songlist"))
        let settingstabitem: UITabBarItem = UITabBarItem(title: "Songs", image: UIImage(named: "Songlist"), selectedImage: UIImage(named: "Songlist"))
        
        songlistview.tabBarItem = songtabitem
        wishlistview.tabBarItem = wishtabitem
        settingsview.tabBarItem = settingstabitem
        
        let tabbarview = UITabBarController()
        tabbarview.viewControllers = [songlistview, wishlistview, settingsview]
        
        self.window?.rootViewController = tabbarview
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}


}

