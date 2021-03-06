//
//  RegisterViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 15.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class RegisterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func registerBtnClicked(sender: AnyObject) {
        openBrowser()
    }
    
    func openBrowser(){
        let openLink = NSURL(string : "http://www.business.gov.au/registration-and-licences/Pages/register-for-an-australian-business-number-abn.aspx")
        UIApplication.sharedApplication().openURL(openLink!)
    }
    
    @IBAction func registerNowBtn(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("ABNGSTRegister") as?    ABNGSTRegister
        self.navigationController?.pushViewController(next!, animated: true)
    }
}
