//
//  Digit.swift
//  GameExam
//
//  Created by Osnaldy Vasquez on 10/23/17.
//  Copyright © 2017 Osnaldy Vasquez. All rights reserved.
//

import Foundation
import UIKit

class Digit {

    lazy var color: UIColor = pickColor()
    lazy var digit: UInt32 = pickDigit()
    
    func pickDigit() -> UInt32 {
        return arc4random_uniform(10)
    }
    
    func pickColor() -> UIColor {
        
        let color = arc4random_uniform(4)
        if color == 0 {
            return UIColor.red
        }
        else if color == 1 {
            return UIColor.blue
        }
        else if color == 2 {
            return UIColor.green
        }
        else{
            return UIColor.purple
        }
    }
    
    func getDigit() -> UInt32 {
        
        return self.digit
    }
    
    func getColor() -> UIColor {
        
        return self.color
    }
    
    func spinDigit(){
        let colornum = arc4random_uniform(4)
        digit = arc4random_uniform(10)
        if colornum == 0 {
            color = UIColor.red
        }
        else if colornum == 1 {
            color = UIColor.blue
        }
        else if colornum == 2 {
            color = UIColor.green
        }
        else{
            color = UIColor.purple
        }
        
    }
    
}
