//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Edwin Cardenas on 5/17/25.
//

import UIKit

class ViewController: UIViewController {
    
    var questionLabel: UILabel = {
        let label = UILabel()
        
        label.text = "???"
        
        return label
    }()
    
    var questionButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Next Question", for: .normal)
        button.addTarget(self, action: #selector(showNextQuestion), for: .touchUpInside)
        
        return button
    }()
    
    var answerLabel: UILabel = {
        let label = UILabel()
        
        label.text = "???"
        
        return label
    }()
    
    var answerButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Show Answer", for: .normal)
        button.addTarget(self, action: #selector(showAnswer), for: .touchUpInside)
        
        return button
    }()
    
    let questions = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    let answers = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var currentQuestionIndex: Int = 0
    
    private func setupUI() {
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionButton.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(questionLabel)
        view.addSubview(questionButton)
        view.addSubview(answerLabel)
        view.addSubview(answerButton)
        
        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            questionButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 20),
            questionButton.centerXAnchor.constraint(equalTo: questionLabel.centerXAnchor),
            
            answerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            answerLabel.centerXAnchor.constraint(equalTo: questionLabel.centerXAnchor),
            
            answerButton.topAnchor.constraint(equalTo: answerLabel.bottomAnchor, constant: 20),
            answerButton.centerXAnchor.constraint(equalTo: questionLabel.centerXAnchor)
        ])
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        setupUI()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[currentQuestionIndex]
    }


}

// MARK: - Actions

extension ViewController {
    @objc func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question = questions[currentQuestionIndex]
        
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @objc func showAnswer(_ sender: UIButton) {
        let answer = answers[currentQuestionIndex]
        
        answerLabel.text = answer
    }
}
