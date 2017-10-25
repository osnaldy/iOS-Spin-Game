//
//  SlotMachineGame.swift
//  GameExam
//
//  Created by Osnaldy Vasquez on 10/23/17.
//  Copyright © 2017 Osnaldy Vasquez. All rights reserved.
//

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
