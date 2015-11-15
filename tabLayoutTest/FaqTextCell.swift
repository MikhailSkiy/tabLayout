//
//  FaqTextCell.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 14.11.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class FaqTextCell : UITableViewCell {
    var isObserving = false;
    
    @IBOutlet weak var title: UILabel!
 
    @IBOutlet weak var plusBtn: UIButton!
  
    
    
    class var expandedHeight : CGFloat { get {return 200}}
    @IBOutlet weak var titleButton: UIButton!
    
    class var defaultHeight : CGFloat { get {return 44}}
    
    func checkHeight(){
        // titleBtn.hidden = (frame.size.height > TextCell.expandedHeight )
    }
    
   
    
    func watchFrameChanges(){
        if !isObserving {
            addObserver(self, forKeyPath: "frame", options: .New, context: nil)
            checkHeight()
            isObserving = true
        }
    }
    
    func ignoreFrameChanges(){
        if isObserving {
            removeObserver(self, forKeyPath: "frame")
            isObserving = false
        }
    }
    
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        if keyPath == "frame" {
            checkHeight()
        }
    }
    
    deinit{
        if isObserving {
            removeObserver(self, forKeyPath: "frame")
            isObserving = false
        }
    }
    

    
}
