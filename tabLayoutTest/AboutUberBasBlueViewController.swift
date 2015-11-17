//
//  AboutUberBasBlueViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 17.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class AboutUberBASBlueViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    @IBAction func streamlineBtnSelected(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("StreamlineUberBas") as? StreamlineUberBas
        self.navigationController?.pushViewController(next!, animated: true)
    }
    @IBAction func registerBtnSelected(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("RegisterViewController") as? RegisterViewController
        self.navigationController?.pushViewController(next!, animated: true)
    }
    
}
