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
        
        return button
    }()
    
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
    }


}

