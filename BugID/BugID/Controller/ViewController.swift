//
//  ViewController.swift
//  BugID
//
//  Created by Eric Andrews on 10/27/18.
//  Copyright © 2018 Eric Andrews. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let questions = "Identify this aquatic insect"
    
    let allQuestions = QuestionBank()
    
    var correctAnswer = String()
    var score : Int = 0
    var currentQuestion = 0
    var currentImage = 0
    var pickedAnswer:UInt32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startOver()
        
        nextButton.isHidden = true
        
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
        
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.white
        
    }
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func MultipleButtons(_ sender: AnyObject) {
        
        if (sender.tag == Int(pickedAnswer))
        {
            score += 1
            scoreLabel.text = "Score: \(score)"
//            ProgressHUD.showSuccess("Correct!")
        }
        else
        {
//            ProgressHUD.showError("Wrong!")
        }
        
        if (currentQuestion <= allQuestions.list.count - 1)
        {
            nextQuestion()
        }
        else {
            reviewAlert()
        }
        
    }
    
    func nextQuestion() {
        
        scoreLabel.text = "Score: \(score)"
        
        questionLabel.text = questions
        
        questionImageView.image = allQuestions.list[currentImage].questionImage
        
        displayPossibleAnswers()
        
    }
    
    func displayPossibleAnswers() {
        
        pickedAnswer = arc4random_uniform(3)+1
        
        var button:UIButton = UIButton()
        var x = 1
        
        for i in 1...3
        {
            
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(pickedAnswer))
            {
                button.setTitle(allQuestions.list[currentQuestion].possibleAnswers[0], for: .normal)
                if button.isEnabled == true {
                    button.backgroundColor = UIColor.white
                }
                else if button.isEnabled == false
                {
                    button.backgroundColor = UIColor.green
                }
                
            }
            else {
                button.setTitle(allQuestions.list[currentQuestion].possibleAnswers[x], for: .normal)
                button.backgroundColor = UIColor.white
                x += 1
                
            }
            
        }
        
        currentQuestion += 1
        currentImage += 1
        
    }
    
    func startOver() {
        
        score = 0
        currentQuestion = 0
        currentImage = 0
        scoreLabel.text = "Score: \(score)"
        
        nextQuestion()
        
    }
    
    func viewAnswers () {
        
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
        nextButton.isHidden = false
        
        startOver()
        
    }
    
    func reviewAlert() {
        if button1.isEnabled == true {
            
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions!", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Review", style: .default, handler: { UIAlertAction in
                self.viewAnswers()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        } else if button1.isEnabled == false {
            
            let alert = UIAlertController(title: "Awesome", message: "You've finished the lesson", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Try again?", style: .default, handler: { UIAlertAction in
                self.viewDidLoad()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        }
    
    
    @IBAction func Backbutton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    
}
