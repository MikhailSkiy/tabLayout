//
//  ABNGSTRegister.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 18.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class ABNGSTRegister : UIViewController {
    
    @IBOutlet weak var AbnLabel: UILabel!
    @IBOutlet weak var GstLabel: UILabel!
    @IBOutlet weak var OrCallLabel: UIButton!
    
    @IBAction func GstBtnClicked(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("registerGst") as?    registerGst
        self.navigationController?.pushViewController(next!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AbnLabel.layer.borderWidth = 1
        AbnLabel.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue:255/255, alpha: 1.0 ).CGColor
        
        GstLabel.layer.borderWidth = 1
        GstLabel.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue:255/255, alpha: 1.0 ).CGColor
        
        OrCallLabel.layer.borderWidth = 1
        OrCallLabel.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue:255/255, alpha: 1.0 ).CGColor
   
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    
}
