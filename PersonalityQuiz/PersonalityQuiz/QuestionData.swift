//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Tim Schotte on 02/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//

import Foundation

struct Question{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType{
    case single, multiple, ranged
}

struct Answer{
    var text: String
    var type: AnimalType
}

enum AnimalType: Character{
    case turkey = "🦃"
    case lobster = "🦐"
    case octopus = "🐙"
    case dinosaur = "🦕"
    
    var definition: String{
        switch self{
        case .dinosaur: return "You like to sleep"
        case .lobster: return "You like it when it's hot"
        case .octopus: return "You are so handy"
        case .turkey: return "You are so noisy"
        }
    }
}

var questions: [Question] = [
    Question(text: "What is your favorite climate?",
             type: .single,
             answers: [
                Answer (text: "Hot", type: .lobster),
                Answer (text: "Cold", type: .dinosaur),
                Answer (text: "Wet", type: .octopus),
                Answer (text: "Storm", type: .turkey)
        ]),
    Question(text: "What is your favorite food?",
             type: .multiple,
             answers: [
                Answer (text: "Schrimps", type: .lobster),
                Answer (text: "Leaves", type: .dinosaur),
                Answer (text: "Ships", type: .octopus),
                Answer (text: "Trouble", type: .turkey)
        ]),
    Question(text: "How much do you like trouble?",
             type: .ranged,
             answers: [
                Answer (text: "Not at all", type: .lobster),
                Answer (text: "What", type: .dinosaur),
                Answer (text: "I fix them", type: .octopus),
                Answer (text: "Love it", type: .turkey)
        ]),
]
