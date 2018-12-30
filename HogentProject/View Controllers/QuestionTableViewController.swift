//
//  QuestionTableViewController.swift
//  HogentProject
//
//  Created by Tim Schotte on 29/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    var questions: [Question] = [
        Question(text: "Hoeveel is 1+1 ",
                 type: .single,
                 answers: [
                    Answer (text: "2", score: 1),
                    Answer (text: "3", score: 0),
                    Answer (text: "4", score: 0),
                    Answer (text: "5", score: 0)
            ]),
        Question(text: "Getallen deelbaar door 2",
                 type: .multiple,
                 answers: [
                    Answer (text: "4", score: 1),
                    Answer (text: "3", score: 0),
                    Answer (text: "2", score: 1),
                    Answer (text: "1", score: 0)
            ]),
        ]
    
    //let cell: UITableViewCell = tableView.dequeueReusableCell(performSegue(withIdentifier: "Cell", sender: indexPath))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
