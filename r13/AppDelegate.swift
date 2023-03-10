////
////  AppDelegate.swift
////  r13
////
////  Created by PRIYANKA SANKAR on 12/22/22.
////
//
//import UIKit
//
//@main
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        // Override point for customization after application launch.
//        return true
//    }
//
//    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }
//
//
//}
//
//-----------------



//@UIApplicationMain
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            window = UIWindow(frame: UIScreen.main.bounds)
            
            // Set up the first View Controller
            let vc1 = UIViewController()
            vc1.view.backgroundColor = UIColor.orange
            vc1.tabBarItem.title = "Orange"
            vc1.tabBarItem.image = UIImage(named: "heart")
            
            // Set up the second View Controller
            let vc2 = UIViewController()
            vc2.view.backgroundColor = UIColor.purple
            vc2.tabBarItem.title = "Purple"
            vc2.tabBarItem.image = UIImage(named: "star")
            
            // Set up the Tab Bar Controller to have two tabs
            let tabBarController = UITabBarController()
            tabBarController.viewControllers = [vc1, vc2]
            
            // Make the Tab Bar Controller the root view controller
            window?.rootViewController = tabBarController
            window?.makeKeyAndVisible()
            
            return true
    }
    
    // ...
}
