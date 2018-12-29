//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Tim Schotte on 30/10/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    @IBAction func unwindToSegue(segue: UIStoryboardSegue) { }
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }


}

