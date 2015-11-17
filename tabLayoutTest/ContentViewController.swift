//
//  ContentViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 16.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var pageIndex : Int!
    var titleText : String!
    var imageFile : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  self.imageView.image = UIImage(named:self.imageFile)
        // self.titleLabel.text = self.titleText
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
