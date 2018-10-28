//
//  QuestionBank.swift
//  Bug Quiz1
//
//  Created by Eric Andrews on 10/25/18.
//  Copyright © 2018 Eric Andrews. All rights reserved.
//
// #imageLiteral(resourceName: "0")

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(qImage: #imageLiteral(resourceName: "0"), pAnswers: ["Yellow Sally Stonefly Nymph", "Golden Salmonfly", "Yellow Mayfly Nymph"])

        // Add the Question to the list of questions
        list.append(item)
     
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(qImage: #imageLiteral(resourceName: "1.jpg"), pAnswers: ["Blue Winged Olive Dry Fly", "Green Drake Dry Fly", "Callibaetis Dry Fly"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "2"), pAnswers: ["Dragonfly Nymph", "Stonefly Nymph", "Scud"]))
        
        list.append(Question(qImage: #imageLiteral(resourceName: "3"), pAnswers: ["Golden Stonefly Nymph", "Stonefly Nymph", "Mayfly Nymph"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "4"), pAnswers: ["Mayfly Dry Fly", "Stonefly Dry Fly", "PMD Mayfly Dry Fly"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "5"), pAnswers: ["Midge Dry Fly", "Cranefly Dry Fly", "Mayfly Dry Fly"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "6"), pAnswers: ["Midge Emerger", "Cranefly Nymph", "Callibaetis Nymph"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "7"), pAnswers: ["Baetis Mayfly Nymph", "Golden Stonefly Nymph", "Yellow Sally Nymph"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "8"), pAnswers: ["Cased Caddis Nymph", "Rock Worm Larva", "Wrapped Caddis Nymph"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "9"), pAnswers: ["Pale Morning Dun Mayfly Dry Fly", "BWO Mayfly Dry Fly", "March Brown Mayfly Dry Fly"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "10"), pAnswers: ["Salmonfly Nymph", "Stonefly Nymph", "Green Drake Nymph"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "11"), pAnswers: ["Scud", "Sowbug", "Water Boatman"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "12"), pAnswers: ["Annelid (Aquatic Worm)", "Californicus Pacificus", "Tubidoid Annelidius"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "13"), pAnswers: ["Salmonfly Dry Fly", "March Brown Stonefly Dry Fly", "Stonefly Dry Fly"]))

        list.append(Question(qImage: #imageLiteral(resourceName: "14"), pAnswers: ["Water Boatman", "Dragonfly Nymph", "Damselfly Nymph"]))

    }
    
}
