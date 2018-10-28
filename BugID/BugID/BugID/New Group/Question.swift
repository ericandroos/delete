//
//  Question.swift
//  Bug Quiz1
//
//  Created by Eric Andrews on 10/25/18.
//  Copyright © 2018 Eric Andrews. All rights reserved.
//

import UIKit

class Question {
    
    let questionImage : UIImage
    var possibleAnswers = [String]()
    let correctAnswer : Int
    
    init(qImage : UIImage, pAnswers : [String], cAnswer : Int = 0) {
        possibleAnswers = pAnswers
        correctAnswer = cAnswer
        questionImage = qImage
    }
    
}
