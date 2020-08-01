//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showQuestion(quiz.firstQuestion())
        showScore()
        updateProgressBar()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        setButtonColorForAnswer(button: sender, answer: sender.currentTitle!)
        showQuestion(quiz.nextQuestion())
        showScore()
        updateProgressBar()
    }
    
    func setButtonColorForAnswer(button: UIButton, answer: String) {
        button.backgroundColor = quiz.isCorrectAnswerForCurrentQuestion(answer) == true ? UIColor.green : UIColor.red
        
        // Keep button color change for 0.2s, then reset back to transparent
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { self.resetButtons() }
    }
    
    func showQuestion(_ question: Question) {
        questionLabel.text = question.text
        answerOne.setTitle(question.answers[0], for: .normal)
        answerTwo.setTitle(question.answers[1], for: .normal)
        answerThree.setTitle(question.answers[2], for: .normal)
    }
    
    func showScore() {
        scoreLabel.text = "Score: \(quiz.currentScore())"
    }
    
    func updateProgressBar() {
        progressBar.progress = quiz.progress()
    }
    
    func resetButtons() {
        answerOne.backgroundColor = UIColor.clear
        answerTwo.backgroundColor = UIColor.clear
        answerThree.backgroundColor = UIColor.clear
    }
}

