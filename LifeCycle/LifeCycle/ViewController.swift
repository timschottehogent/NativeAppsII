//
//  ViewController.swift
//  LifeCycle
//
//  Created by Tim Schotte on 15/11/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Viewcontroller - view Did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Viewcontroller - view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Viewcontroller - view did appear")
    }


}

