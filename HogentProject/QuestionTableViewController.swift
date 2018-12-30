//
//  QuestionTableViewController.swift
//  HogentProject
//
//  Created by Tim Schotte on 29/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    var questions = [Question]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let savedQuestions = Question.loadFromFile(){
            questions = savedQuestions
        } else{
            questions = Question.loadSampleData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return questions.count
        } else{
            return 0
        }
    }

    @IBAction func stopButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)
        let question = questions[indexPath.row]
        cell.textLabel?.text = "Question #\(indexPath.row) - \(question.text)"
        var result = ""
        for answer in question.answers{
            result.append(answer.text + "\n")
        }
        cell.detailTextLabel?.text = String(result.dropLast())
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle{
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            questions.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBAction func saveQuestionListToFile(_ sender: Any) {
        Question.saveToFile(questions: questions)
    }
    
}
