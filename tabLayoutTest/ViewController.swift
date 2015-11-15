//
//  ViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 11.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
import PagingMenuController

class ViewController: UIViewController, PagingMenuControllerDelegate {
    
    var defaultPage = 0
    
    func goToTab(index :Int){
        self.tabBarController?.selectedIndex = index
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.whiteColor()
        
        let viewController = self.storyboard?.instantiateViewControllerWithIdentifier("UberTaxEnvViewController") as! UberTaxEnvViewController
        viewController.title = "Uber Tax Environment"
       
        
        let viewController2 = self.storyboard?.instantiateViewControllerWithIdentifier("GstBasicsViewController") as! GstBasicsViewController
        viewController2.title = "GST Basics"
        
        let whatToDoNowController =
        self.storyboard?.instantiateViewControllerWithIdentifier("WhatToDoViewController") as!
        WhatToDoViewController
        whatToDoNowController.title = "What to do"
        
        let aboutUberBasController =
        self.storyboard?.instantiateViewControllerWithIdentifier("AboutUberBASViewController") as!
        AboutUberBASViewController
        aboutUberBasController.title = "About UberBAS"
        
        let viewControllers = [viewController, viewController2,whatToDoNowController,aboutUberBasController]
        
        let options = PagingMenuOptions()
        options.defaultPage = defaultPage
        options.font = UIFont.systemFontOfSize(10)
        options.textColor = UIColor.blackColor()
        options.selectedFont = UIFont.systemFontOfSize(10)
        options.selectedTextColor = UIColor.blueColor()
        options.menuItemMargin = 5
        options.menuHeight = 30
        options.menuDisplayMode = .SegmentedControl
        
        let pagingMenuController = PagingMenuController(viewControllers: viewControllers, options: options)
        pagingMenuController.view.frame.origin.y += 64
        pagingMenuController.view.frame.size.height -= 64
        
        addChildViewController(pagingMenuController)
        view.addSubview(pagingMenuController.view)
        pagingMenuController.didMoveToParentViewController(self)
        pagingMenuController.delegate = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didMoveToMenuPage(page: Int) {
         self.tabBarController?.selectedIndex = page
    }
    
    func willMoveToMenuPage(page: Int) {
    }
    
    
}



