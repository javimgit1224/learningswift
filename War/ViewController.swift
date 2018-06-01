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
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

