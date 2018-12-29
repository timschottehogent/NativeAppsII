//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Tim Schotte on 02/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import Foundation

enum ResponseType: String, Codable{
    case single, multiple
}

struct Question: CustomStringConvertible, Equatable, Codable{
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
    var description: String{
        return "Question(text: \(text), type:\(type), answers: \(answers)"
    }
    
    static func ==(lhs: Question, rhs: Question) -> Bool{
        return lhs.text == rhs.text && lhs.type == rhs.type && lhs.answers == rhs.answers
    }
}


struct Answer: CustomStringConvertible, Equatable, Codable{
    var text: String
    var score: Int
    
    static func == (lhs: Answer, rhs: Answer) -> Bool{
        return lhs.text == rhs.text && lhs.score == rhs.score
    }
    
    var description: String{
        return "Answer(text: \(text), type: \(score)"
    }
}





var questions: [Question] = [
    Question(text: "Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq",
             type: .single,
             answers: [
                Answer (text: "2", score: 1),
                Answer (text: "3", score: 0),
                Answer (text: "4", score: 0),
                Answer (text: "5", score: 0)
        ]),
    Question(text: "Getallen deelbaar door 2df qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdq Hoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf qsd fqs dfqsd fqsd fqsdf qsd fqsdf qsdf qsdf qsdf qfds q fdqHoeveel is 1+1 dfqsdf sdf sdf sqdf qsdf qsdf qsd fqsd fqsdf qsd fqsdf qsdf",
             type: .multiple,
             answers: [
                Answer (text: "4", score: 1),
                Answer (text: "3", score: 0),
                Answer (text: "2", score: 1),
                Answer (text: "1", score: 0)
        ]),
]
