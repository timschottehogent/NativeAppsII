//
//  ViewController.swift
//  IBBasics
//
//  Created by Tim Schotte on 02/10/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.setTitleColor(.red, for: .normal)
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
    }
    
    
}

