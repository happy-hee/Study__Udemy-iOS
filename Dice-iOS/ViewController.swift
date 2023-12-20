//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // Dice default value (index)
    // var leftDiceNumber = 1
    // var rightDiceNumber = 5 
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {

        // print("leftDiceNumber at beginning = \(leftDiceNumber)")

        // Dice image Arrays
        let diceArray = [UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix")]

        // Dice image Random Create
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]

        // Increase by 1
        // leftDiceNumber += 1

        // Decrement by 1
        // leftDiceNumber -= 1

        // Random number Create -  Int.random(in: lower...upper)
        // => Randomise numbers, including numbers in parentheses
    }
}

