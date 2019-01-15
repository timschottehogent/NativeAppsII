//
//  ViewController.swift
//  HogentProject
//
//  Created by Tim Schotte on 29/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//  (c) I extended some exercises from the book "Everyone can code - App developement with swift" downloaded from the ibooks store
//  It's possible there are similarities 
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //numbers image (c) downloaded from https://www.sciencenews.org/article/real-numbers-physics-free-will
    }
    
    @IBAction func unwindToMain(segue:UIStoryboardSegue) { }


    @IBAction func reloadSampleData(_ sender: Any) {
        Question.saveToFile(questions: Question.loadSampleData())
    }
    
}

