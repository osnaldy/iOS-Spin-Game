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
        machine2.setNumberOfDigits(number: 5)
        //digit1.textColor = UIColor.red
        //digit2.textColor = UIColor.red
        //digit3.textColor = UIColor.red
        //digit5_1.textColor = UIColor.red
        //digit5_2.textColor = UIColor.red
        //digit5_3.textColor = UIColor.red
        //digit5_4.textColor = UIColor.red
        //digit5_5.textColor = UIColor.red
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
    
    private var machine2 = SlotMachineGame()
    
    @IBOutlet weak var digit5_1: UILabel!
    
    @IBOutlet weak var digit5_2: UILabel!
    
    @IBOutlet weak var digit5_3: UILabel!
    
    @IBOutlet weak var digit5_4: UILabel!
    
    @IBOutlet weak var digit5_5: UILabel!
    
    @IBOutlet weak var score5: UILabel!
    
    @IBAction func spin5(_ sender: UIButton) {
        machine2.spin()
        score5.text = "Score: " + String(machine2.score)
        digit5_1.text = String(machine2.array[0].digit)
        digit5_1.textColor = machine2.array[0].color
        digit5_2.textColor = machine2.array[1].color
        digit5_3.textColor = machine2.array[2].color
        digit5_4.textColor = machine2.array[3].color
        digit5_5.textColor = machine2.array[4].color
        digit5_2.text = String(machine2.array[1].digit)
        digit5_3.text = String(machine2.array[2].digit)
        digit5_4.text = String(machine2.array[3].digit)
        digit5_5.text = String(machine2.array[4].digit)
    }
    
    
    @IBAction func reset5(_ sender: UIButton) {
        
        machine2 = SlotMachineGame()
        machine2.setNumberOfDigits(number: 5)
        digit5_1.textColor = UIColor.red
        digit5_2.textColor = UIColor.red
        digit5_3.textColor = UIColor.red
        digit5_4.textColor = UIColor.red
        digit5_5.textColor = UIColor.red
        digit5_1.text = "0"
        digit5_2.text = "0"
        digit5_3.text = "0"
        digit5_4.text = "0"
        digit5_5.text = "0"
        score5.text = "Score: 100"
    }
}

