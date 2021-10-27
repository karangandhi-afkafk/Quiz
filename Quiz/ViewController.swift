//
//  ViewController.swift
//  Quiz
//
//  Created by Karan Gandhi on 10/27/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var questions: UILabel!
    
    @IBOutlet weak var progress: UIProgressView!
    
    
    
    var questionBank = [["4+2 = 7","False"],
                        ["5-3 = 2", "True"],
                        [ "10 - 2 = 9", "False"]
                        ]
    var questionNumber = 0
    
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @objc func updateUI(){
        

         
            questions.text = questionBank[questionNumber][0]
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
            
        }
    
        
        
       
        
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
       
      
        
        
        let userInput = sender.currentTitle!
        if userInput == questionBank[questionNumber][1]
            
        {
            correctAnswer += 1
            print("correct")
            print(userInput)
            print(questionBank[questionNumber][1])
            sender.backgroundColor = UIColor.green
            
            
        }
        
        else{
            print("Incorrect!")
            sender.backgroundColor = UIColor.red
            
        }
        
        if questionNumber + 1 < questionBank.count{
            
            questionNumber += 1
        }
        
        else {
            
            questionNumber = 0
        }
        
        
        Timer.scheduledTimer(timeInterval: 0.4, target:self, selector: #selector(updateUI), userInfo: nil, repeats: true)
       
        
    }
        
        
        
    }
    
    
   
    




