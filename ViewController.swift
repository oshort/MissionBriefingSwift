//
//  ViewController.swift
//  MissionBriefingSwift
//
//  Created by Oliver Short on 5/10/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var agentNameTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var agentGreeting: UILabel!
    
    @IBOutlet weak var instructionsLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            agentNameTextField.text = ""
            passwordTextField.text = ""
            agentGreeting.text = ""

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//authenticate background!
@IBAction func authenticateButtonPushed(sender: UIButton){
            self.view.backgroundColor = .greenColor()
        
            if agentNameTextField .isFirstResponder() {
                agentNameTextField.resignFirstResponder();
            }else if passwordTextField .isFirstResponder() {
                    passwordTextField.resignFirstResponder()
    }
    
        
        if agentNameTextField.hasText() && passwordTextField .hasText() {
            
            
        let lastName = agentNameTextField.text?.componentsSeparatedByString(" ").last
            agentGreeting.text = "Good Evening Agent \(lastName!)"
            
            instructionsLabel.text = "This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent \(lastName!), you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds."
            
            view.backgroundColor = .greenColor()
        }else{
            view.backgroundColor = .redColor()
            
    }
        

    }




}

    


