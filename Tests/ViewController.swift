//
//  ViewController.swift
//  Tests
//
//  Created by Nikita Entin on 07.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var questions = TestQuestion.getQuestion()
    private var questionIndex = 0
    var correctAnswer = 0
    var incorrectAnswer = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBOutlet weak var questionName: UILabel! {
        didSet {
            questionName.numberOfLines = 3
        }
    }
    
    //MARK: - button labels
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    
    
<<<<<<< HEAD
    // обновление вопросов
=======
    
>>>>>>> 46049588c3eb9d49ef78f88a95afa1460108afac
    private func updateUI() {
        
        let currentQuestion = questions[questionIndex]
        let keyOfAnswers = [currentQuestion.answer1?.keys,currentQuestion.answer2?.keys,currentQuestion.answer3?.keys,currentQuestion.answer4?.keys]
        
        answer1.setTitle(keyOfAnswers[0]?.description, for: .normal)
        answer2.setTitle(keyOfAnswers[1]?.description, for: .normal)
        answer3.setTitle(keyOfAnswers[2]?.description, for: .normal)
        answer4.setTitle(keyOfAnswers[3]?.description, for: .normal)
        questionName.text = currentQuestion.question
        
        for button in [answer1,answer2,answer3,answer4] {
            button?.isHidden = false
        }
        // в конце каждого блока выскакивает
        if questionIndex == 9 {
            showAlert(title: "Конец 1 теста", message: "Правильно - \(correctAnswer) , неправильно - \(incorrectAnswer)")
            correctAnswer = 0
            incorrectAnswer = 0
        }
        if questionIndex == 17 {
            showAlert(title: "Конец 2 теста", message: "Правильно - \(correctAnswer) , неправильно - \(incorrectAnswer)")
            correctAnswer = 0
            incorrectAnswer = 0
        }
        if questionIndex == 26 {
            showAlert(title: "Конец 3 теста", message: "Правильно - \(correctAnswer) , неправильно - \(incorrectAnswer)")
            correctAnswer = 0
            incorrectAnswer = 0
        }
        if questionIndex == questions.endIndex {
            showAlert(title: "Конец 4 теста", message: "Правильно - \(correctAnswer) , неправильно - \(incorrectAnswer)")
            correctAnswer = 0
            incorrectAnswer = 0
        }
    }
    
    private func nextQuestion() {
        questionIndex += 1
        if questionIndex < questions.count {
        updateUI()
        }
    }
    
    @IBAction func answerButton1(_ sender: Any) {
        for value in questions[questionIndex].answer1!.values {
            if value {
                showAlert(title: "Правильно", message: nil)
                nextQuestion()
                correctAnswer += 1
            } else {
                showAlert(title: "Неправильно", message: nil)
                answer1.isHidden = true
                incorrectAnswer += 1
                correctAnswer -= 1
            }
        }
        }
        
        @IBAction func answerButton2(_ sender: Any) {
            for value in questions[questionIndex].answer2!.values {
                if value {
                    showAlert(title: "Правильно", message: nil)
                    nextQuestion()
                    correctAnswer += 1
                } else {
                    showAlert(title: "Неправильно", message: nil)
                    answer2.isHidden = true
                    incorrectAnswer += 1
                    correctAnswer -= 1
                }
            }
        }
        
        @IBAction func answerButton3(_ sender: Any) {
            for value in questions[questionIndex].answer3!.values {
                if value {
                    showAlert(title: "Правильно", message: nil)
                    nextQuestion()
                    correctAnswer += 1
                } else {
                    showAlert(title: "Неправильно", message: nil)
                    answer3.isHidden = true
                    incorrectAnswer += 1
                    correctAnswer -= 1
                }
            }
        }
        
        @IBAction func answerButton4(_ sender: Any) {
            for value in questions[questionIndex].answer4!.values {
                if value {
                    showAlert(title: "Правильно", message: nil)
                    nextQuestion()
                    correctAnswer += 1
                } else {
                    showAlert(title: "Неправильно", message: nil)
                    answer4.isHidden = true
                    incorrectAnswer += 1
                    correctAnswer -= 1
                }
            }
        }
<<<<<<< HEAD
// алерт для показа правильности выбора ответа
=======

>>>>>>> 46049588c3eb9d49ef78f88a95afa1460108afac
    private func showAlert(title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

