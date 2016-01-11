//
//  UberBASViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 14.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class UberBASViewController: UIViewController {
   
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: (195/255.0), green: (191/255.0), blue: (191/255.0), alpha: 1.0)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if let hasBeenLauncherBefore = defaults.stringForKey("hasAppBeenLaunchedBefore")
        {
            //print(" N-th time app launched ")
            
            container.hidden = true
    
        }
        else
        {
            //print(" First time app launched ")
            defaults.setBool(true, forKey: "hasAppBeenLaunchedBefore")
            
            container.hidden = false
        
        }
        
    }
    
    @IBAction func CloudStorageBtn(sender: AnyObject) {
        
    }
    
    
    @IBAction func menuBtnClicked(sender: AnyObject) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func uberDriverForumBtnClicked(sender: AnyObject) {
        openBrowser("http://uberpeople.net/")
    }
    
    @IBAction func uberNewsroomBtnClicked(sender: AnyObject) {
        openBrowser("https://newsroom.uber.com/australia/")
    }
    
    @IBAction func uberParnerPortal(sender: AnyObject) {
        openBrowser("https://www.uber.com/log-in")
    }
    
    func openBrowser(link:String){
        let openLink = NSURL(string : link)
        UIApplication.sharedApplication().openURL(openLink!)
    }
    @IBAction func trackExpensesBtnClicked(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://xpenditure.com/en/affiliate/CloudBookkeep")!)
    }
    
    @IBAction func dropBoxBtn(sender: AnyObject) {
         UIApplication.sharedApplication().openURL(NSURL(string: "itms://itunes.apple.com/en/app/dropbox/id327630330?mt=8")!)
    }
    
    @IBAction func evernoteBnt(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://voxer.com/download/")!)
    }
    
    @IBAction func lodgeBtn(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("SubmissionViewController") as? SubmissionViewController
        self.navigationController?.pushViewController(next!, animated: true)
    }
    
    @IBAction func UberBASClicked(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("PageParentViewController") as? PageParentViewController
        self.navigationController?.pushViewController(next!, animated: true)
    }
    @IBAction func sentEmail(sender: AnyObject) {
        let email = "admin@cloudbookkeep.com"
        let url = NSURL(string: "mailto:\(email)")
        UIApplication.sharedApplication().openURL(url!)
    }
 
    @IBAction func call(sender: AnyObject) {
        let phone = "tel://1300898089";
        let url:NSURL = NSURL(string:phone)!;
        UIApplication.sharedApplication().openURL(url);
    }
    
    

}
