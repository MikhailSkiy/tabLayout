//
//  registerGst.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 18.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit

class registerGst : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnSelected(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("ABNGSTRegister") as?    ABNGSTRegister
        self.navigationController?.pushViewController(next!, animated: true)
    }
}
