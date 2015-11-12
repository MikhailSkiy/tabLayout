//
//  ViewController1.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 11.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class ViewController1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGrayColor()
        
        let textLabel = UILabel(frame: CGRectMake(0, 0, 200, 30))
        textLabel.center = view.center
        textLabel.textAlignment = .Center
        textLabel.font = UIFont.systemFontOfSize(24)
        textLabel.text = "View Controller 1"
        view.addSubview(textLabel)
    }
}
