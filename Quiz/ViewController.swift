//
//  ViewController.swift
//  Quiz
//
//  Created by Peter Aurigemma on 1/30/20.
//  Copyright © 2020 Peter Aurigemma. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
    "what is 7+7?",
    "what is the capital of Vermont?",
    "what is cognac made from?"
    ]
    
    let answers: [String]  = [
    "14",
    "Mountpelier",
    "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    

    @IBAction func showNextQuestion(_ sender: UIButton) {
        os_log("showing next question")
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        os_log("showing next answer")
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded")
        questionLabel.text = questions[currentQuestionIndex]
        
        
    }

}

