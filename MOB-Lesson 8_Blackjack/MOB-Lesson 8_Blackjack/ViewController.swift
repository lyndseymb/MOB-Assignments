//
//  ViewController.swift
//  MOB-Lesson 8_Blackjack
//
//  Created by Lyndsey Boucherle on 29/10/15.
//  Copyright © 2015 Lyndsey Boucherle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var currentCard: UILabel!
    @IBOutlet weak var totalScore: UILabel!
    
    @IBOutlet weak var gameOutcome: UILabel!
    
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var walkButton: UIButton!
    
    @IBOutlet weak var avgScoreLabel: UILabel!
    @IBOutlet weak var numberBustLabel: UILabel!
    
    @IBOutlet weak var roundNumberLabel: UILabel!
    
    var round:Int = 1
    var Total:Int = 0
    var Bust:Int = 0
    var cumulativeScore:Int = 0
    var averageScore = 0
    
    @IBAction func hitClicked(sender: AnyObject) {
//        var Score:Int = Int(totalScore.text!)!
//        
        var num = Int(arc4random_uniform(10) + 1)
        currentCard.text = String(num)
        Total = Total + num
        totalScore.text = String(Total)

        
        if Total > 21 {
            gameOutcome.text = "BUST!!"
            gameOutcome.textColor = UIColor.redColor()
            hitButton.enabled = false
            walkButton.enabled = false
            Bust = Bust + 1
            numberBustLabel.text = String(Bust)
            Total = 0
        }
        
        
    }
    
    
    @IBAction func walkClicked(sender: AnyObject) {
        gameOutcome.text = "You walked with " + totalScore.text!
        gameOutcome.textColor = UIColor.blueColor()
        
    }
    
    @IBAction func restartClicked(sender: AnyObject) {
        
        currentCard.text = "0"
        totalScore.text = "0"
        hitButton.enabled = true
        walkButton.enabled = true
        gameOutcome.text = ""
        
        cumulativeScore = cumulativeScore + Total
        print(cumulativeScore)
        averageScore = cumulativeScore / round
        avgScoreLabel.text = String(averageScore)
        Total = 0
        round = round + 1
        roundNumberLabel.text = String(round)
    }

}

