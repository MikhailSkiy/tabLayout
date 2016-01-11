//
//  DropboxViewController.swift
//  tabLayoutTest
//
//  Created by Михаил Валуйский on 01.12.15.
//  Copyright © 2015 Михаил Валуйский. All rights reserved.
//

import UIKit
class DropboxViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "https://form.jotform.co/53331378926865");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
