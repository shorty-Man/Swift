//
//  ViewController.swift
//  MultiTask
//
//  Created by Carlos Butron on 13/04/15.
//  Copyright (c) 2015 Carlos Butron.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var myNotification: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateInterface:", name: UIApplicationWillEnterForegroundNotification, object: nil)
    }
    
    func updateInterface (notification: NSNotification){
        myNotification.text = "Back to background with notification"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
