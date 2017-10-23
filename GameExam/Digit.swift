//
//  Digit.swift
//  GameExam
//
//  Created by Osnaldy Vasquez on 10/22/17.
//  Copyright © 2017 Osnaldy Vasquez. All rights reserved.
//

import Foundation
import UIKit

class Digit {

    lazy var color: UIColor = randomColor()
    var digit: UInt32 = arc4random_uniform(10)
    
    func randomColor() -> UIColor{
        let num = arc4random_uniform(4)
        if num == 0 {
            return UIColor.red
        }
        else if num == 1 {
            return UIColor.blue
        }
        else if num == 2 {
            return UIColor.green
        }
        else{
            return UIColor.purple
        }
        
    }
    
    
    
}
