//
//  WebViewController.swift
//  introApp1
//
//  Created by ryota on 2020/05/10.
//  Copyright © 2020 Honda Ryota. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController,WKUIDelegate {
    
    
    var webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.frame  = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height - 50)
        
        view.addSubview(webView)
        
        let urlString = UserDefaults.standard.object(forKey: "url")
        let url = URL(string: urlString as! String)
        let request = URLRequest(url:url!)
        webView.load(request)
        
        
        
        
    }
    


}
