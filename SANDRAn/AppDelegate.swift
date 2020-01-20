//
//  AppDelegate.swift
//  SANDRAn
//
//  Created by Diego Raúl Iturrizaga Casas on 1/6/20.
//  Copyright © 2020 Diego Raúl Iturrizaga Casas. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Create a window that is the same size as the screen
        
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // Create a view controller
        //let viewController = AuthenticationViewController()
        let mainTabBarController = MainTabBarController()
        let mainNavigationController = MainNavigationController()
        let secondaryViewController = SecondaryViewController()
        
        mainNavigationController.title = "NavCV"
        secondaryViewController.title = "SecondaryVC"
        
        let mainViewController = MainViewController()
        mainViewController.title = "MainVC"
        
        mainNavigationController.viewControllers = [mainViewController]
        
        mainTabBarController.viewControllers = [mainNavigationController, secondaryViewController]
        // Assign the view controller as 'window's root view controller
        //self.window?.rootViewController = viewController
        self.window?.rootViewController = mainTabBarController
        // Show the window
        self.window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

