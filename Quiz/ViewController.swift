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
    
    let question: [String] [
    "what is 7+7?",
    "what is the capital of ermont?",
    "what is cognac made from?"
    ]
    
    let answer: [String [] [
    

    @IBAction func showNextQuestion(_ sender: UIButton) {
        os_log("showing next question")
        currentQuestionIndex += 1
        if curretQuestionIndex == question.count {
            
        }
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        os_log("showing next answer")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded")
        
        
    }

}

