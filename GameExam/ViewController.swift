//
//  ViewController.swift
//  GameExam
//
//  Created by Osnaldy Vasquez on 10/23/17.
//  Copyright © 2017 Osnaldy Vasquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private var machine = SlotMachineGame(3)
    
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
        machine.reset()
        score.text = "Score: " + String(machine.getScore())
    }
    
    private var machine2 = SlotMachineGame(5)
    
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
        
        machine2 = SlotMachineGame(5)
        score5.text = "Score: " + String(machine2.getScore())
    }
}

