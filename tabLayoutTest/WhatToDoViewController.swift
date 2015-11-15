//
//  WhatToDoViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 12.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class WhatToDoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: (39/255.0), green: (34/255.0), blue: (61/255.0), alpha: 1.0)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func moreAboutBtnClick(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController") as? ViewController
        
        next?.defaultPage = 3
    
        self.navigationController?.pushViewController(next!,animated: true)
    }
}
