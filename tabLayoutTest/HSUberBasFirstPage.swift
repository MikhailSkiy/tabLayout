//
//  HSUberBasFirstPage.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 16.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class HSUberBasFirstPage :ContentViewController{
    
    @IBAction func HereHowBtn(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("HereHowViewController") as? HereHowViewController
        
        self.navigationController?.pushViewController(next!,animated: true)
    }
    @IBAction func sendEmail(sender: AnyObject) {
        let email = "admin@cloudbookkeep.com"
        let url = NSURL(string: "mailto:\(email)")
        UIApplication.sharedApplication().openURL(url!)
    }
}
