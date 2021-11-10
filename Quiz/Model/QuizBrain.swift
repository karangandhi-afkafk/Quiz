//
//  QuizBrain.swift
//  Quiz
//
//  Created by Karan Gandhi on 11/10/21.
//

import Foundation

struct QuizBrain {
    
    var questionBank = [Questions(text: "4+2 = 7", answer: "False"),Questions(text: "5-3 = 2", answer: "True"),Questions(text: "10 - 2 = 9", answer: "False") ]
    
    
    
    var questionNumber = 0
    
    func checkAnswer(_ userInput : String) -> Bool {
        
        if userInput == questionBank[questionNumber].answer
        
        {
            return true
        }
        
        else {
            
            return false
        }
        
        
    }
    
    func getQuestion() -> String{
        
        return questionBank[questionNumber].text
        
        
        
        
    }
    
    
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < questionBank.count{
            
            questionNumber += 1
        }
        
        else {
            
            questionNumber = 0
        }
        
        
    }
    
}
