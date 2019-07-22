//
//  EmailViewController.swift
//  tabBarBusinessApplication
//
//  Created by Shivam on 22/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit
import MessageUI

class EmailViewController: UIViewController,UITextViewDelegate,MFMessageComposeViewControllerDelegate {
    
    

    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    
    @IBOutlet weak var messageField: UITextView!
    
    @IBOutlet weak var button1: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button1.layer.cornerRadius = 5
        messageField.layer.cornerRadius = 5
        
        self.navigationItem.title = "Email Us"
        
         self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
    }
    

    @IBAction func dismissKeyboard(_ sender: Any) {
        
        self.resignFirstResponder()
        
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            
            self.resignFirstResponder()
            return false
            
            
        }
        return true
        
    }
    
    
    
    @IBAction func send(_ sender: Any) {
        
        let mcvc: MFMailComposeViewController = MFMailComposeViewController()
        
        mcvc.mailComposeDelegate = (self as! MFMailComposeViewControllerDelegate)
        
        let recipients = ["123@abc.com"]
        
        mcvc.setToRecipients(recipients)
        
        mcvc.setSubject(nameField.text! + " - my app")
        
        mcvc.setMessageBody("""
                                Name: \(nameField.text!)
                                Email: \(emailField.text!)
                                Message: \(messageField.text!)
                                
                                """, isHTML: false)
        self.present(mcvc, animated: true, completion: nil)
        
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
