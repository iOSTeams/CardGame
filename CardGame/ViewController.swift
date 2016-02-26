//
//  ViewController.swift
//  CardGame
//
//  Created by King Justin on 2/20/16.
//  Copyright © 2016 justinleesf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    
    var score2 = 0

    @IBOutlet weak var secondScoreLabel: UILabel!
    @IBOutlet weak var firstScoreLabel: UILabel!
    @IBOutlet weak var roundUIButton: UIButton!
    @IBOutlet weak var secondCardView: UIImageView!
    @IBOutlet weak var firstCardView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func roundUIButtonTapped(sender: UIButton) {
        
        // Randomize a number for the first imageview
        let firstRandomNumber = arc4random_uniform(12)+2
        
        // Create String with the first random number
        let firstCardString:String = String(format:"card%i", firstRandomNumber)
        
        // Randomize a number for the second imageview
        let secondRandomNumber = arc4random_uniform(12)+2
        
        //Create String with the second random number
        let secondCardString: String = String(format: "card%i", secondRandomNumber)

        // Set first card image to the randomized card
        firstCardView.image = UIImage(named: firstCardString)
        
        // Set second card image to the randomized card
        secondCardView.image = UIImage(named: secondCardString)
        
        //Add points, two numbers one on each side, if a card is bigger than the other then points++
        
    
        
        if ( firstRandomNumber > secondRandomNumber){
            score = score + 1
            firstScoreLabel.text=String(score)
            
            
        }
        
        else if(firstRandomNumber < secondRandomNumber){
            score2 = score2 + 1
            secondScoreLabel.text=String(score2)
        }
        else {
           
            score=score-score
            score2=score2-score2
            firstScoreLabel.text=String(score)
            secondScoreLabel.text=String(score2)
        }

    }

}

