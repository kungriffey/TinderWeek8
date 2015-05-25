//
//  ViewController.swift
//  TinderTesting
//
//  Created by Kunwardeep Gill on 2015-05-25.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

  let permissions = ["public_profile"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    // Comment
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func FBLoginButtonPressed(sender: FBSDKLoginButton) {
    
    PFFacebookUtils.logInWithPermissions(self.permissions, /*block; added*/block: {
      (user: PFUser?, error: NSError?) -> Void in //switched ! to ?
      if user == nil {
        NSLog("Uh oh. The user cancelled the Facebook login.")
      } else if user!.isNew { //inserted !
        NSLog("User signed up and logged in through Facebook!")
      } else {
        NSLog("User logged in through Facebook! \(user!.username)")
      }
    })
  }

}

