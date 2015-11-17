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
}
