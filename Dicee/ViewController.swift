//
//  ViewController.swift
//  Dicee
//
//  Created by Jake Shapiro on 7/13/19.
//  Copyright © 2019 Jake Shapiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5", "dice6"]
    
    var randomOneIndex = 0, randomTwoIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollPressed(_ sender: UIButton) {
        changeDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeDice()
    }
    
    func changeDice(){
        randomOneIndex = Int.random(in: 0...5)
        randomTwoIndex = Int.random(in: 0...5)
        
        diceOne.image = UIImage(named: diceArray[randomOneIndex])
        diceTwo.image = UIImage(named: diceArray[randomTwoIndex])
    }
}

