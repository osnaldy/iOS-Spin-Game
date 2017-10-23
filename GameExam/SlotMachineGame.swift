//
//  SlotMachineGame.swift
//  GameExam
//
//  Created by Osnaldy Vasquez on 10/22/17.
//  Copyright © 2017 Osnaldy Vasquez. All rights reserved.
//

/*
 You will need to have a SlotMachineGame class that manages the spinning and the score. The SlotMachineGame should:
 Manage the changing of the digits.
 Manage the score as follows:
 A new game starts with a score of 100.
 Each spin costs the player two points.
 All digits equal and colors equal (Ex. 5 5 5 or 2 2 2 2 2 ) the user earns 100 points in the 3-Digit game and 500 points in the 5-Digit game.
 All colors equal but digits differ (Ex. 3 5 7 or 1 4 9 3 5 ) the user earns 25 points in the 3-Digit game and 125 points in the 5-Digit game.
 All digits equal but colors differ ( 7 7 7 or 1 1 1 1 1 ) the user earns 50 points in the 3-Digit game and 250 points in the 5-Digit game.
 When the user has a score less than 2, the Spin button should be disabled.
 Keep a history of each spin and make it available to the History View during segue.
*/

import UIKit
import Foundation

class SlotMachineGame{

    var score: Int = 100
    var array: [Digit] = []
    
    var digits: Int = 0
    
    var lost = false
    
    init (_ numberOfDigits : Int ){
        self.digits = numberOfDigits
        self.array = []
        for _ in 0...numberOfDigits {
            array.append(Digit())
        }
    }
    
    func reset() {
        
        score = 100
        lost = false
    }
    
    func getScore() -> Int {
        
        return score
    }
    
    func getDigits() -> [Digit] {
        
        return array
    }
    
    func spinDigits() {
        
        self.array = []
        for _ in 0...digits {
            array.append(Digit())
        }
    }
    func spin(){
        self.score = self.score - 2
        spinDigits()
        if(digits == 3){
            if(array[0].color == array[1].color && array[1].color == array[2].color) {
                if(array[0].digit == array[1].digit && array[1].digit == array[2].digit){
                    score += 300
                }
                else{
                    score += 75
                }
            }
            else if(array[0].digit == array[1].digit && array[1].digit == array[2].digit){
                score += 150
            }
        }
        else if(digits == 5){
            if(array[0].color == array[1].color && array[2].color == array[3].color && array[0].color == array[2].color && array[0].color == array[4].color) {
                if(array[0].digit == array[1].digit && array[2].digit == array[3].digit && array[0].digit == array[2].digit && array[0].digit == array[4].digit){
                    score += 500
                }
                else{
                    score += 125
                }
            }
            else if(array[0].digit == array[1].digit && array[2].digit == array[3].digit && array[0].digit == array[2].digit && array[0].digit == array[4].digit){
                score += 250
            }
            
        }
        
        if score <= 2 {
            lost = true
        }
    }
}
