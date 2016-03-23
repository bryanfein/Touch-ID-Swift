//
//  ViewController.swift
//  Touch ID
//
//  Created by Bryan Fein on 3/9/16.
//  Copyright © 2016 Bryan Fein. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func buttonAction(sender: AnyObject) {
    
    touchIDCall()
    
    }
    
    
    func touchIDCall(){
        
        let authContext : LAContext = LAContext()
        var error : NSError?
        
        //to see whether if we have touch ID on the device
        if authContext .canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            
            authContext.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "Testing Touch ID", reply: {
                
                (wasSuccessful : Bool, error : NSError?) in
                
                if wasSuccessful {
                    
                    // do whatever
                    
                }
                else {
                    // wasnt successful
                    
                }
                
            })
            
        }
            
        else {
            
            
            
            
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

