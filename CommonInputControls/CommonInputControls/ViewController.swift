//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Tim Schotte on 14/10/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
    }
    
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("button was tapped")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("the switch is on")
        }
        else{
            print("the switch is off")
        }
    }
    @IBAction func slider(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func textField(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    @IBAction func textFieldPrimAction(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    @IBAction func respondToTabGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

