//
//  HSUberBasFourPAge.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 17.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class HSUberBasFourPAge :ContentViewController{
    
    @IBAction func howToPayBtn(sender: AnyObject) {
        let openLink = NSURL(fileURLWithPath: "https://www.ato.gov.au/Business/Payments-to-ATO/How-to-pay/")
        UIApplication.sharedApplication().openURL(openLink)
    }
    
    
    @IBAction func phoneBtnClicked(sender: AnyObject) {
        let phone = "tel://1300898089";
        let url:NSURL = NSURL(string:phone)!;
        UIApplication.sharedApplication().openURL(url);
    }

    

}
