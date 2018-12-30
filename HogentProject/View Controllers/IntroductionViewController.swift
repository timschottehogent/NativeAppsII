//
//  ViewController.swift
//  HogentProject
//
//  Created by Tim Schotte on 29/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func unwindToMain(segue:UIStoryboardSegue) { }


    @IBAction func reloadSampleData(_ sender: Any) {
        Question.saveToFile(questions: Question.loadSampleData())
    }
    
}

