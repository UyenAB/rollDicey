//
//  ViewController.swift
//  Dicey
//
//  Created by UyenLVA on 12/18/17.
//  Copyright © 2017 UyenLVA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        loadImage()
      
    }
    
    func loadImage() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //  print(randomDiceIndex2)
        
        //connect Image View to button
        
        diceImageView2.image = UIImage(named : diceArray[randomDiceIndex2])
        diceImageView1.image = UIImage(named :  diceArray[randomDiceIndex1])
        
    }

}

