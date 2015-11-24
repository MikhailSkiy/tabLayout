//
//  PageParentViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 16.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit

class PageParentViewController: UIViewController, UIPageViewControllerDataSource {
    
    var pageViewController : UIPageViewController!
   // var pageTitles : NSArray!
    var pageImages : NSArray!
    let controllers = ["HSUberBasFirstPage","HSUberBasSecondPage","HSUberBasThirdPage","HSUberBasFourPAge"]
    let pageTitles = ["HSUberBasFirstPage","HSUberBasSecondPage","HSUberBasThirdPage","HSUberBasFourPAge"]
    
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController")as! UIPageViewController
        
        self.pageViewController.dataSource = self
        var startVC = self.viewControllerAtIndex(0)as ContentViewController
        var viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as! [UIViewController], direction: .Forward, animated: true, completion: nil)
        
        self.pageViewController.view.frame = CGRectMake(0,40,self.view.frame.width,self.view.frame.height - 60)
        
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
        self.view.backgroundColor = UIColor(red: 61/255, green: 180/255, blue:250/255, alpha: 1.0 )
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func restartAction(sender: AnyObject) {
        var startVC = self.viewControllerAtIndex(0)as ContentViewController
        var viewControllers = NSArray (object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as! [UIViewController], direction: .Forward, animated: true, completion: nil)
    }
    
    func viewControllerAtIndex(index : Int)->ContentViewController
    {
        if (self.pageTitles.count == 0) || (index >= self.pageTitles.count){
            return ContentViewController();
        }
        var vc:ContentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ContentViewController")as! ContentViewController
        
        //        vc.imageFile = self.pageImages[index] as! String
        //        vc.titleText = self.pageTitles[index] as! String
        vc = self.storyboard?.instantiateViewControllerWithIdentifier(controllers[index])as! ContentViewController
        vc.pageIndex = index
        
        return vc;
        
    }
    
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        var vc = viewController as! ContentViewController
        var index = vc.pageIndex as Int
        if (index == 0 || index == NSNotFound){
            return nil
        }
        index--
        return self.viewControllerAtIndex(index);
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var vc = viewController as! ContentViewController
        var index = vc.pageIndex as Int
        if (index == NSNotFound){
            return nil
        }
        index++
        if (index == self.pageTitles.count){
            return nil
        }
        
        return self.viewControllerAtIndex(index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.pageTitles.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
