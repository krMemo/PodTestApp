//
//  ViewController.swift
//  PodTestApp
//
//  Created by Guillermo Ramirez on 1/28/17.
//  Copyright © 2017 krMemo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let backendless = Backendless.sharedInstance()
    let user: BackendlessUser = BackendlessUser()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createComment(_ sender: Any) {
        
        let comment = Comment()
        comment.message = "I'm in"
        comment.authorEmail = "gramirez@yankuiapps.com.mx"
        backendless?.persistenceService.of(Comment.ofClass()).save(comment)
    }
    @IBAction func createAccount(_ sender: Any) {
        
        user.email = "gramirez@yankuiapps.com.mx"
        user.name = "Guillermo Ramírez"
        user.password = "password"
        backendless?.userService.registering(user)
    }
}

