//
//  LeftSideViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 22.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit

class LeftSideViewController: UIViewController {

    @IBAction func AboutUberBasBtnClicked(sender: AnyObject) {
        
        var aboutViewController = self.storyboard?.instantiateViewControllerWithIdentifier("AboutUberBASBlueViewController") as! AboutUberBASBlueViewController
        
        var aboutNavController = UINavigationController(rootViewController: aboutViewController)
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.centerContainer!.centerViewController = aboutNavController
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    
    @IBAction func UberGstFactsBtnClicked(sender: AnyObject) {
        
        var aboutViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        
        var aboutNavController = UINavigationController(rootViewController: aboutViewController)
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.centerContainer!.centerViewController = aboutNavController
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    
    @IBAction func RegisterForAbnGstBtnClicked(sender: AnyObject) {
        
        var aboutViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ABNGSTRegister") as! ABNGSTRegister
        
        var aboutNavController = UINavigationController(rootViewController: aboutViewController)
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.centerContainer!.centerViewController = aboutNavController
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    @IBAction func HowToStreamUberBASBtnClicked(sender: AnyObject) {
        var aboutViewController = self.storyboard?.instantiateViewControllerWithIdentifier("StreamlineUberBas") as! StreamlineUberBas
        
        var aboutNavController = UINavigationController(rootViewController: aboutViewController)
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.centerContainer!.centerViewController = aboutNavController
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    
    @IBAction func faqBtnClicked(sender: AnyObject) {
        var aboutViewController = self.storyboard?.instantiateViewControllerWithIdentifier("FaqViewController") as! FaqViewController
        
        var aboutNavController = UINavigationController(rootViewController: aboutViewController)
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.centerContainer!.centerViewController = aboutNavController
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    @IBAction func HomeBtnClicked(sender: AnyObject) {
        var aboutViewController = self.storyboard?.instantiateViewControllerWithIdentifier("UberBASViewController") as! UberBASViewController
        
        var aboutNavController = UINavigationController(rootViewController: aboutViewController)
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.centerContainer!.centerViewController = aboutNavController
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    
    @IBAction func SignUpBtnClicked(sender: AnyObject) {
        var aboutViewController = self.storyboard?.instantiateViewControllerWithIdentifier("RegisterWebView") as! RegisterWebView
        
        var aboutNavController = UINavigationController(rootViewController: aboutViewController)
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.centerContainer!.centerViewController = aboutNavController
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    
    
    @IBAction func ContactUsBtnClicked(sender: AnyObject) {
        let openLink = NSURL(string : "http://www.cloudbookkeep.com/contact/")
        UIApplication.sharedApplication().openURL(openLink!)
    }
}
