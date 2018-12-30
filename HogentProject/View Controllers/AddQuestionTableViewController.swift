//
//  AddQuestionTableViewController.swift
//  HogentProject
//
//  Created by Tim Schotte on 30/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class AddQuestionTableViewController: UITableViewController {
    
    
    @IBOutlet weak var questionText: UITextField!
    
    @IBOutlet weak var possibleAnswers: UISwitch!
    @IBOutlet weak var answer1Text: UITextField!
    @IBOutlet weak var answer2Text: UITextField!
    @IBOutlet weak var answer3Text: UITextField!
    @IBOutlet weak var answer4Text: UITextField!
    
    @IBOutlet weak var answer1Label: UILabel!
    @IBOutlet weak var answer1Stepper: UIStepper!
    
    @IBOutlet weak var answer2Label: UILabel!
    @IBOutlet weak var answer2Stepper: UIStepper!
    
    @IBOutlet weak var answer3Label: UILabel!
    @IBOutlet weak var answer3Stepper: UIStepper!
    
    @IBOutlet weak var answer4Label: UILabel!
    @IBOutlet weak var answer4Stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func stepperScore1(_ sender: UIStepper) {
        answer1Label.text = Int(sender.value).description
    }
    
    @IBAction func stepperScore2(_ sender: UIStepper) {
        answer2Label.text = Int(sender.value).description
    }
    
    @IBAction func stepperScore3(_ sender: UIStepper) {
        answer3Label.text = Int(sender.value).description
    }
    
    @IBAction func stepperScore4(_ sender: UIStepper) {
        answer4Label.text = Int(sender.value).description
    }
    
    @IBAction func backToMain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveQuestion(_ sender: Any) {
        var errors: Bool = false
        if(questionText.text?.isEmpty ?? true){
            alertBox(tile: "Empty Question", message: "Question cannot be empty!")
            errors = true
        }
        if(answer1Text.text?.isEmpty ?? true){
            alertBox(tile: "Empty Answer", message: "Answer 1 cannot be empty!")
            errors = true
        }
        if(answer2Text.text?.isEmpty ?? true){
            alertBox(tile: "Empty Answer", message: "Answer 2 cannot be empty!")
            errors = true
        }
        if(answer3Text.text?.isEmpty ?? true){
            alertBox(tile: "Empty Answer", message: "Answer 3 cannot be empty!")
            errors = true
        }
        if(answer4Text.text?.isEmpty ?? true){
            alertBox(tile: "Empty Answer", message: "Answer 4 cannot be empty!")
            errors = true
        }
        if(!errors){
            var answers: [Answer] = []
            answers.append(Answer(text: answer1Text.text!, score: Int(answer1Label.text!)!))
            answers.append(Answer(text: answer2Text.text!, score: Int(answer2Label.text!)!))
            answers.append(Answer(text: answer3Text.text!, score: Int(answer3Label.text!)!))
            answers.append(Answer(text: answer4Text.text!, score: Int(answer4Label.text!)!))
            var responseType: ResponseType
            if(possibleAnswers.isOn){
                responseType = .multiple
            }else{
                responseType = .single
            }
            let question = Question(text: questionText.text!, type: responseType, answers: answers)
            var questions: [Question] = Question.loadFromFile()!
            questions.append(question)
            Question.saveToFile(questions: questions)
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    func alertBox(tile: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    

}
