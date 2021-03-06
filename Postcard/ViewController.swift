//
//  ViewController.swift
//  Postcard
//
//  Created by Nick Jewell on 11/09/2014.
//  Copyright (c) 2014 MacJewell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var enterNameTextField: UITextField!
    @IBOutlet var enterMessageTextField: UITextField!
    
    @IBOutlet var mailButton: UIButton!
    @IBOutlet var nameLabel: UILabel!
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment here
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

