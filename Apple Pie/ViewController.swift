//
//  ViewController.swift
//  Apple Pie
//
//  Created by Denis Bystruev on 16/11/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = [
        "арбуз",
        "банан",
        "Гномик",
        "Домик",
        "Ель",
        "Ёж",
        "Железная Дорога",
    ]
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()// Do any additional setup after loading the view, typically from a nib.
    }
    func newRound ()
    {
        let word = listOfWords.removeFirst()
        game = Game( word: word, incorrectMovesRemaining:
            incorrectMovesAllowed )
        
    }
    func updateUI () {
        let name = "Tree 5"
        treeImageView.image = UIImage(named: name)
        scoreLabel.text = "Выигрыши: \(totalWins), проигрышь: \(totalLosses)"
    }
    
    
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    
}

