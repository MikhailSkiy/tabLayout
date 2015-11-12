//
//  AboutUberBASViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 12.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//
import UIKit
class AboutUberBASViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: (39/255.0), green: (34/255.0), blue: (61/255.0), alpha: 1.0)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func streamlineSelected(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("StreamlineUberBas") as? StreamlineUberBas
        self.navigationController?.pushViewController(next!, animated: true)
    }
}
