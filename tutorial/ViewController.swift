//
//  ViewController.swift
//  FoodTracker
//
//  Created by Javier Melendrez on 6/5/18.
//  Copyright © 2018 Javier Melendrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //mark: properties
    @IBOutlet weak var EnterMealName: UITextField!
    @IBOutlet weak var ChangeMealName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        EnterMealName.delegate = self
    }
    
    //mark: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        EnterMealName.text = textField.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //mark: actions
    @IBAction func UIButton(_ sender: Any) {
        ChangeMealName.text = "Default Text"
    }
}

