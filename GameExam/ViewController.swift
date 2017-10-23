//
//  ViewController.swift
//  GameExam
//
//  Created by Osnaldy Vasquez on 10/22/17.
//  Copyright © 2017 Osnaldy Vasquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        machine.setNumberOfDigits(number: 3)
        digit1.textColor = UIColor.red
        digit2.textColor = UIColor.red
        digit3.textColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    private var machine = SlotMachineGame()
    
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var digit1: UILabel!
    
    @IBOutlet weak var digit2: UILabel!
    
    @IBOutlet weak var digit3: UILabel!
    
    @IBAction func spin(_ sender: UIButton) {
        
        machine.spin()
        score.text = "Score: " + String(machine.score)
        digit1.text = String(machine.array[0].digit)
        digit1.textColor = machine.array[0].color
        digit2.textColor = machine.array[1].color
        digit3.textColor = machine.array[2].color
        digit2.text = String(machine.array[1].digit)
        digit3.text = String(machine.array[2].digit)
    }
    @IBAction func reset(_ sender: UIButton) {
        
        machine = SlotMachineGame()
        machine.setNumberOfDigits(number: 3)
        digit1.textColor = UIColor.red
        digit2.textColor = UIColor.red
        digit3.textColor = UIColor.red
        digit1.text = "0"
        digit2.text = "0"
        digit3.text = "0"
        score.text = "Score: 100"
    }
}

