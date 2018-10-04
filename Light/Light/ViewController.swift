//
//  ViewController.swift
//  Light
//
//  Created by Tim Schotte on 04/10/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true;
    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI(){
        if(lightOn){
            view.backgroundColor = .white
            //lightButton.setTitle("off", for: .normal)
        }
        else{
            view.backgroundColor = .black
            //lightButton.setTitle("on", for: .normal)
        }
        
    }
}

