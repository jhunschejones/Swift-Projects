//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Joshua on 7/20/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz {
    let questions = [
        Question(text: "Which is the largest organ in the human body?", answers: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(text: "Five dollars is worth how many nickels?", answers: ["25", "50", "100"], correctAnswer: "100"),
        Question(text: "What do the letters in the GMT time zone stand for?", answers: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(text: "What is the French word for 'hat'?", answers: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(text: "In past times, what would a gentleman keep in his fob pocket?", answers: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(text: "How would one say goodbye in Spanish?", answers: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(text: "Which of these colours is NOT featured in the logo for Google?", answers: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(text: "What alcoholic drink is made from molasses?", answers: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(text: "What type of animal was Harambe?", answers: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(text: "Where is Tasmania located?", answers: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    var currentQuestionIndex = 0
    var questionsRight = 0
    
    mutating func isCorrectAnswerForCurrentQuestion(_ userAnswer: String) -> Bool {
        if userAnswer == questions[currentQuestionIndex].correctAnswer {
            questionsRight += 1
            return true
        }
        return false
    }
    
    func firstQuestion() -> Question {
        return questions.first!
    }
    
    mutating func nextQuestion() -> Question {
        currentQuestionIndex += 1
        // Restart from the begining once we reach the end of the quiz
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
            questionsRight = 0
        }
        return questions[currentQuestionIndex]
    }
    
    func progress() -> Float {
        return Float(currentQuestionIndex + 1) / Float(questions.count)
    }
    
    func currentScore() -> String {
        return "\(questionsRight) / \(questions.count)"
    }
}
