//
//  ViewController.swift
//  War
//
//  Created by Javier Melendrez on 5/23/18.
//  Copyright © 2018 Javier Melendrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//created a proprty to the viewcontroller class
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftPlayerScore: UILabel!
    
    @IBOutlet weak var rightPlayerScore: UILabel!
    //create 2 var to count scores
    var left_score:Int = 0
    var right_score:Int = 0
    
    //touch up inside is when the user just taps the button
    @IBAction func dealTapped(_ sender: Any) {
        print("deal")
        //your letting the random number equal a random number
        //the parameter is 13 numbers 0-12
        //since card starts at 2 and ends at 14 we add 2
        let LeftRandomNum = arc4random_uniform(13) + 2
        print("Left \(LeftRandomNum)")
        let RightRandomNum = arc4random_uniform(13) + 2
        print("Right \(RightRandomNum)")

        //create a new UIImage object for left card
        
        leftImageView.image = UIImage(named: "card\(LeftRandomNum)")
        
        //create a new UIImage object for right card
        rightImageView.image = UIImage(named: "card\(RightRandomNum)")
        
        //compare the numbers to see which player won the round
        if LeftRandomNum > RightRandomNum {
            //increment the left score
            left_score = left_score + 1
            //update the label
            leftPlayerScore.text = String(left_score)
        }
        else if RightRandomNum > LeftRandomNum {
            right_score = right_score + 1
            rightPlayerScore.text = String(right_score)
        }
        else if LeftRandomNum == RightRandomNum {
            //do nothing
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//RESTART BUTTON
    @IBAction func restartGame(_ sender: Any) {
        //reset the count scores to 0
        left_score = 0
        right_score = 0
        //change the score label to 0
        leftPlayerScore.text = String(left_score)
        rightPlayerScore.text = String(right_score)
        //reset the card images
        leftImageView.image = UIImage(named: "back")
        rightImageView.image = UIImage(named: "back")
        
    }
    

}

