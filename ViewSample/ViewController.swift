//
//  ViewController.swift
//  ViewSample
//
//  Created by 図師 ともみ on 2015/09/24.
//  Copyright © 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    var targetURL = "https://www.google.co.jp"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadAddressURL()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadAddressURL(){
        let requestURL = NSURL(string: targetURL)
        let req = NSURLRequest(URL:requestURL!)
        
        webView.loadRequest(req)
        webView.scalesPageToFit = true
        
    }


}

