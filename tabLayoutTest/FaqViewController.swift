//
//  FaqViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 14.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit

let celId = "cell"
class FaqViewController: UITableViewController {
    
    var selectedIndexPath: NSIndexPath?
    var open = true
    
    
    var titleList: [String] = ["Q. What is Business Activity Statement?",
        "Q. Announcement from Uber",
        "Q. About UberBAS","Q. About UberBAS","Q. About UberBAS"]
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int{
        return titleList.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(celId, forIndexPath:indexPath) as! FaqTextCell
      
        
        view.backgroundColor = UIColor(red: (51/255.0), green: (47/255.0), blue: (80/255.0), alpha: 1.0)
        
        cell.title.text = titleList[indexPath.row]
        cell.title.font = UIFont (name: "Helvetica Neue", size: 13)
        cell.backgroundColor =  UIColor(red: (51/255.0), green: (47/255.0), blue: (80/255.0), alpha: 1.0)
        return cell
        
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath : NSIndexPath){
        
        
        if (open){
            let uncheckedImage = UIImage(named:"minus")
            (tableView.cellForRowAtIndexPath(indexPath) as! FaqTextCell).plusBtn.setImage(uncheckedImage, forState: .Normal)
            open = false
        } else {
            let uncheckedImage = UIImage(named:"plus")
            (tableView.cellForRowAtIndexPath(indexPath) as! FaqTextCell).plusBtn.setImage(uncheckedImage, forState: .Normal)
            open =  true
        }
        

        
        let previousIndexPath = selectedIndexPath
        if indexPath == selectedIndexPath{
            selectedIndexPath = nil
        } else {
            selectedIndexPath = indexPath
        }
        
        var indexPaths : Array<NSIndexPath> = []
        if let previos = previousIndexPath{
            indexPaths += [previos]
        }
        if let current = selectedIndexPath{
            indexPaths += [current]
        }
        if indexPaths.count > 0 {
            tableView.reloadRowsAtIndexPaths(indexPaths, withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        (cell as! FaqTextCell).watchFrameChanges()
        
    }
    
    override func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        (cell as! FaqTextCell).ignoreFrameChanges()
        
        
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath == selectedIndexPath {
            return FaqTextCell.expandedHeight
        } else {
            return FaqTextCell.defaultHeight
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
     
        
          
           
        
    }
    
 
    
    

}
