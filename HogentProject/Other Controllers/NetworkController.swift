//
//  QuestionDataController.swift
//  HogentProject
//
//  Created by Tim Schotte on 30/12/2018.
//  Copyright © 2018 Tim Schotte. All rights reserved.
//  (c) I extended some exercises from the book "Everyone can code - App developement with swift" downloaded from the ibooks store
//  It's possible there are similarities 
//

import Foundation

class NetworkController{
    static let shared = NetworkController()
    
    let baseURL = URL(string: "http://numbersapi.com/")!
    
    func fetchNumberInfo(number: String, completion: @escaping (String?) -> Void){
        let numberURL = baseURL.appendingPathComponent(number)
        let task = URLSession.shared.dataTask(with: numberURL){(data, response, error) in
            if let data = data, let string = String(data: data, encoding: .utf8){
                completion(string)
            } else{
                completion(nil)
            }
        }
        task.resume()
    }
}



