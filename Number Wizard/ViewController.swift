//
//  ViewController.swift
//  Number Wizard
//
//  Created by Engin Çalıkuşu on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {

    var minNumber = 0
    var maxNumber = 1000
    var guess = 0
    @IBOutlet weak var guessText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guess = Int.random(in: minNumber...maxNumber)
        updateGuessText()
    }

    @IBAction func greaterButton(_ sender: Any) {
        minNumber = guess + 1
        calculateNextGuess()
    }
    
    @IBAction func lowerButton(_ sender: Any) {
        maxNumber = guess - 1
        calculateNextGuess()
    }
    
    func calculateNextGuess(){
        guess = Int.random(in: minNumber...maxNumber)
        updateGuessText()
    }
    
    func updateGuessText(){
        guessText.text = "Is it... \(guess)?"
    }
    
    @IBAction func yesButton(_ sender: Any) {
        guessText.text = "I win!"
    }
}
