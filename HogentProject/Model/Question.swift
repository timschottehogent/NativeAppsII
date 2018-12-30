//
//  Question.swift
//  HogentProject
//
//  Created by Tim Schotte on 29/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import Foundation

class Question: CustomStringConvertible, Equatable, Codable{
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
    var description: String{
        return "Question(text: \(text), type:\(type), answers: \(answers))"
    }
    
    static func ==(lhs: Question, rhs: Question) -> Bool{
        return lhs.text == rhs.text && lhs.type == rhs.type && lhs.answers == rhs.answers
    }
    
    init(text: String, type: ResponseType, answers:[Answer]){
        self.text = text
        self.type = type
        self.answers = answers
    }
    
    static func saveToFile(questions: [Question]){
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("question").appendingPathExtension("plist")
        let propertyListEncoder = PropertyListEncoder()
        let encodedQuestions = try? propertyListEncoder.encode(questions)
        try? encodedQuestions?.write(to: archiveURL, options: .noFileProtection)
    }
    
    static func loadFromFile() -> [Question]? {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("question").appendingPathExtension("plist")
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedQuestionsData = try? Data(contentsOf: archiveURL), let decodedQuestions = try? propertyListDecoder.decode(Array<Question>.self, from: retrievedQuestionsData){
            return decodedQuestions
        }
    }
    
    static func loadSampleData() -> [Question]{
        let questions: [Question] = [
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
        return questions
    }
    
    enum ResponseType: String, Codable{
        case single, multiple
    }
    
    
    
    
    struct Answer: CustomStringConvertible, Equatable, Codable{
        var text: String
        var score: Int
        
        static func == (lhs: Answer, rhs: Answer) -> Bool{
            return lhs.text == rhs.text && lhs.score == rhs.score
        }
        
        var description: String{
            return "Answer(text: \(text), type: \(score))"
        }
    }
    
    
}
