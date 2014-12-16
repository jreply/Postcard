//
//  ViewController.swift
//  Postcard
//
//  Created by Joaquin Fuentes on 11/8/14.
//  Copyright (c) 2014 Joaquin Fuentes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        // This is what happens when we push the button
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden=false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        
        nameLabel.hidden=false
        nameLabel.text=enterNameTextField.text
        nameLabel.textColor=UIColor.blueColor()
        
        enterNameTextField.text=""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

