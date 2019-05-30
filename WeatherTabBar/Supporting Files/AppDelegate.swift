//
//  AppDelegate.swift
//  WeatherTabBar
//
//  Created by 고상원 on 2019-04-24.
//  Copyright © 2019 고상원. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let vancouver = City(name: "Vancouver", country: "Canada", temp: 15.5, icon: "canada", flag: "canadaFlag", summary: "Sunny")
        let tokyo = City(name: "Tokyo", country: "Japan", temp: 23, icon: "japan", flag: "japanFlag", summary: "Hot")
        let sao = City(name: "São Paulo", country: "Brazil", temp: 25, icon: "brazil", flag: "brazilFlag", summary: "Hot")
        let madrid = City(name: "Madrid", country: "Spain", temp: 30, icon: "italy", flag: "spainFlag", summary: "Rainy")
        
        let vanVC = CityViewController()
        vanVC.city = vancouver
        let canadaBackground = UIImageView(frame: UIScreen.main.bounds)
        canadaBackground.image = UIImage(named: "canadaBackground")
        canadaBackground.contentMode =  UIView.ContentMode.scaleAspectFill
        vanVC.view.insertSubview(canadaBackground, at: 0)
        //vanVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "canadaBackground")!)

        let tokVC = CityViewController()
        tokVC.city = tokyo
        let japanBackground = UIImageView(frame: UIScreen.main.bounds)
        japanBackground.image = UIImage(named: "japanBackground")
        japanBackground.contentMode =  UIView.ContentMode.scaleAspectFill
        tokVC.view.insertSubview(japanBackground, at: 0)
        //tokVC.view.backgroundColor = .green
        
        let saoVC = CityViewController()
        saoVC.city = sao
        let brazilBackground = UIImageView(frame: UIScreen.main.bounds)
        brazilBackground.image = UIImage(named: "brazilBackground")
        brazilBackground.contentMode =  UIView.ContentMode.scaleAspectFill
        saoVC.view.insertSubview(brazilBackground, at: 0)
        //saoVC.view.backgroundColor = .blue
        
        let madVC = CityViewController()
        madVC.city = madrid
        let madridBackground = UIImageView(frame: UIScreen.main.bounds)
        madridBackground.image = UIImage(named: "madridBackground")
        madridBackground.contentMode =  UIView.ContentMode.scaleAspectFill
        madVC.view.insertSubview(madridBackground, at: 0)
        //madVC.view.backgroundColor = .yellow
        
        let tabVC = UITabBarController()
        window?.rootViewController = tabVC
        
        let citiesVC = [vanVC, tokVC, saoVC, madVC]
        tabVC.viewControllers = citiesVC.map { UINavigationController(rootViewController: $0)}
        
        
        window?.makeKeyAndVisible()
        
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

