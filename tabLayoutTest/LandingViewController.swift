//
//  LandingViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 12.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//


import UIKit

class LandingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToGstFactsPAge(sender: UIButton) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController") as? ViewController
        self.navigationController?.pushViewController(next!, animated: true)

    }
    
}
