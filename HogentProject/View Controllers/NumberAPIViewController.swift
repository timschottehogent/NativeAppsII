//
//  NumberAPIViewController.swift
//  HogentProject
//
//  Created by Tim Schotte on 30/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//  (c) I extended some exercises from the book "Everyone can code - App developement with swift" downloaded from the ibooks store
//  It's possible there are similarities 
//

import UIKit

class NumberAPIViewController: UIViewController {

    @IBOutlet weak var inputNumberBox: UITextField!
    @IBOutlet weak var resultOutputBox: UILabel!
    var numberInformation = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        inputNumberBox.keyboardType = UIKeyboardType.numberPad
        // Do any additional setup after loading the view.
    }
    
    func updateUI(with numberInformation: String){
        DispatchQueue.main.async{
            self.numberInformation = numberInformation
            self.resultOutputBox.text = numberInformation

        }
    }
    
    @IBAction func backToMain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    @IBAction func inputNumberBoxChanged(_ sender: Any) {
        if let input = Int(inputNumberBox.text!){
            NetworkController.shared.fetchNumberInfo(number: String(input)){ (numberInformation) in
                if let numberInformation = numberInformation {
                    self.updateUI(with: numberInformation)
                }
            }
        }    
    }
}
