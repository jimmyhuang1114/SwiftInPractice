//
//  ViewController.swift
//  DemoActionSheetAndAlert
//
//  Created by Jimmy Huang on 12/24/14.
//  Copyright (c) 2014 Jimmy Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showActionSheet(sender: UIButton) {
        
        // generate an alert controller for action sheet
        let alertController = UIAlertController(title: "Take Action", message: "Do something interesting!", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        // add hello action
        let helloAction = UIAlertAction(title: "Say Hello", style: UIAlertActionStyle.Default, handler: {
            action in
            let alertMessage = UIAlertController(title: "Hello Swift", message: "Swift is an innovative new programming language for Cocoa and Cocoa Touch.", preferredStyle: UIAlertControllerStyle.Alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil))
            self.presentViewController(alertMessage, animated: true, completion: nil)
        })
        alertController.addAction(helloAction)
        
        // add default OK action
        let defaultOKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        alertController.addAction(defaultOKAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

