//
//  SocialLinksDetailViewController.swift
//  tabBarBusinessApplication
//
//  Created by Shivam on 22/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit
import WebKit

class SocialLinksDetailViewController: UIViewController, WKNavigationDelegate {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    
    @IBOutlet weak var actIn: UIActivityIndicatorView!
    
    var sentData1: String!
    var sentData2: String!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = sentData1
        
        let url = URL(string: sentData2)
        
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
        webView.addSubview(actIn)
        actIn.startAnimating()
        
        webView.navigationDelegate = self
        actIn.hidesWhenStopped = true
        
        
        
        
    }
    

    @IBAction func refresh(_ sender: Any) {
        
        webView.reload()
    }
    
    @IBAction func stop(_ sender: Any) {
        webView.stopLoading()
    }
    
    @IBAction func back(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
        
    }
    
    @IBAction func forward(_ sender: Any) {
        if webView.canGoForward {
             webView.goForward()
        }
       
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        actIn.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        actIn.stopAnimating()
        
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        actIn.stopAnimating()
    }

}
