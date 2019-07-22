//
//  ViewController.swift
//  tabBarBusinessApplication
//
//  Created by Shivam on 21/06/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button1.layer.cornerRadius = 10
        button2.layer.cornerRadius = 10
        button3.layer.cornerRadius = 10
        button4.layer.cornerRadius = 10
        button5.layer.cornerRadius = 10
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
        
        
        
    }


    @IBAction func services(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 2
        
    }
    
    @IBAction func portfolio(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 3
        
    }
    
    @IBAction func aboutus(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 1
        
    }
    
    @IBAction func contactus(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 4
        
    }
    
    
    
    
    
    
}

