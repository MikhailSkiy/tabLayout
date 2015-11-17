//
//  SubmissionViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 15.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class SubmissionViewController: UIViewController {
    @IBOutlet weak var ManualBas: UILabel!
    
    @IBOutlet weak var UberBas: UILabel!
    @IBOutlet weak var GoogleDriveManOrAuto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ManualBas.layer.borderWidth = 1
        ManualBas.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue:255/255, alpha: 1.0 ).CGColor

        UberBas.layer.borderWidth = 1
        UberBas.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue:255/255, alpha: 1.0 ).CGColor
        
        
        GoogleDriveManOrAuto.layer.borderWidth = 1
        GoogleDriveManOrAuto.layer.borderColor = UIColor( red: 255/255, green: 255/255, blue:255/255, alpha: 1.0 ).CGColor
        
         view.backgroundColor = UIColor(red: (51/255.0), green: (47/255.0), blue: (80/255.0), alpha: 1.0)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func aboutUberBasClicked(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("AboutUberBASBlueViewController") as?    AboutUberBASBlueViewController
        self.navigationController?.pushViewController(next!, animated: true)
    }
}
