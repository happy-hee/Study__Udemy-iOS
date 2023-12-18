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
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5 
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {

        // print("leftDiceNumber at beginning = \(leftDiceNumber)")

        diceImageView1.image =
            [UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix")][leftDiceNumber]

            // 1씩 증가
            leftDiceNumber += 1

        diceImageView2.image = 
            [UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceSix")][rightDiceNumber]

            // 1씩 감소
            leftDiceNumber -= 1
    }
    
}

