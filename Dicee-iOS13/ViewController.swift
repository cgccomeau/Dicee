//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlets allow me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // let - turns variable into constant
    let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    // code block that runs every time view is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // IBActions allow me to reference a button and provide handler code
    // code block is triggered when button action occurs
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = diceArray.randomElement() // Array.randomElement() = further optimization for Array[Int.random(in:0...Array.count)]
        diceImageView2.image = diceArray.randomElement()
        
    }
}

/*
 IBOutlets - for when we want our code to change our user interface
 IBActions - for when we want an interaction with our UI to run code
 */

