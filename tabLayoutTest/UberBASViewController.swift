//
//  UberBASViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 14.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class UberBASViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: (195/255.0), green: (191/255.0), blue: (191/255.0), alpha: 1.0)
        
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
    
    @IBAction func faqBtnClicked(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("FaqViewController") as? FaqViewController
        self.navigationController?.pushViewController(next!, animated: true)
    }
    @IBAction func uberParnerPortal(sender: AnyObject) {
        openBrowser("https://www.uber.com/log-in")
    }
    
    func openBrowser(link:String){
        let openLink = NSURL(string : link)
        UIApplication.sharedApplication().openURL(openLink!)
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
