//
//  AppDelegate.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 11.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var centerContainer: MMDrawerController?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
      
        
        var pageController = UIPageControl.appearance()
        pageController.pageIndicatorTintColor = UIColor.blueColor()
        pageController.currentPageIndicatorTintColor = UIColor.whiteColor()
        pageController.backgroundColor = UIColor(red: 61/255, green: 180/255, blue:250/255, alpha: 1.0 )
        

        

        
        var rootViewController = self.window!.rootViewController
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        var centerViewController = mainStoryboard.instantiateViewControllerWithIdentifier("UberBASViewController") as! UberBASViewController
        
        var leftViewController = mainStoryboard.instantiateViewControllerWithIdentifier("LeftSideViewController") as! LeftSideViewController
        
        
        var leftSideNav = UINavigationController(rootViewController: leftViewController)
        var centerNav = UINavigationController(rootViewController: centerViewController)

        
        centerContainer = MMDrawerController(centerViewController: centerNav, leftDrawerViewController: leftSideNav)
        centerContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.PanningCenterView;
        centerContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.PanningCenterView;
        
        window!.rootViewController = centerContainer
        window!.makeKeyAndVisible()
       
        
//        window = UIWindow(frame: UIScreen.mainScreen().bounds)
//        let viewController = ViewController()
//        let navigationController = UINavigationController(rootViewController: viewController)
//        window?.rootViewController = navigationController
//        window?.makeKeyAndVisible()
        
        return true
    }
    
//    func didFinishLaunchingOnce() -> Bool
//    {
//        let defaults = NSUserDefaults.standardUserDefaults()
//        
//        if let hasBeenLauncherBefore = defaults.stringForKey("hasAppBeenLaunchedBefore")
//        {
//            //print(" N-th time app launched ")
//            
//            
//                
//            return true
//        }
//        else
//        {
//            //print(" First time app launched ")
//            defaults.setBool(true, forKey: "hasAppBeenLaunchedBefore")
//            return false
//        }
//    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

