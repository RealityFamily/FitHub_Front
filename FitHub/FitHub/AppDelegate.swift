//
//  AppDelegate.swift
//  FitHub
//
//  Created by RealityFamily on 26/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if let tabBarController = self.window!.rootViewController as? UITabBarController{
            tabBarController.selectedIndex = 2
        }
        
        return true
    }
}

