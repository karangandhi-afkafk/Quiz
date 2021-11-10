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
    
    
    
    var quizbrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @objc func updateUI(){
        

         
        questions.text = quizbrain.getQuestion()
        
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
            
        }
    
        
        
       
        
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
       
      
        
        
        let userInput = sender.currentTitle!
        
        let checkAnswer = quizbrain.checkAnswer(userInput)
        
    
        if checkAnswer
            
        {
           
            sender.backgroundColor = UIColor.green
            
            
        }
        
        else{
      
            sender.backgroundColor = UIColor.red
            
        }
        
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target:self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        
    }
        
        
        
    }
    
    
   
    




