//
//  ResultsViewController.swift
//  HogentProject
//
//  Created by Tim Schotte on 29/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var score: Int = 0
    var maxScore: Int = 0
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.text = generateResult
    }
    
    var generateResult: String{
        var result: String = ""
        result.append("U behaalde: \(score) op \(maxScore)\n")
        if((Double(score) / Double(maxScore)) > 0.5){
            result.append("Proficiat!")
        }else{
            result.append("Volgende keer beter")
        }
        return result
    }
    @IBAction func goBackToMain(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToMain", sender: self)
    }
}
