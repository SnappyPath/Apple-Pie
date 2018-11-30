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
        "Гном",
        "Дом",
        "Ель",
        "Ёж",
        "Железная Дорога",
        "часы",
        "курица",
        "человек",
        "ложка"
           ]
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0
    var currentGame: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()// Do any additional setup after loading the view, typically from a nib.
    }
    func newRound ()
    {
        let word = listOfWords.removeFirst()
        
        currentGame = Game( word: word, incorrectMovesRemaining:
            incorrectMovesAllowed,
         guessedLetters: []
            )
        
        updateUI()
        
    }
    func updateUI () {
        let imageName = "Tree \(currentGame.incorrectMovesRemaining)"
        treeImageView.image = UIImage(named: imageName)
        currentGame.formattedWord.joined(separtor
            : " ")
        
        correctWordLabel.text = currentGame.formattedWord
        
        scoreLabel.text = "Выигрыши: \(totalWins), проигрышь: \(totalLosses)"
    }
    
    
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString =
            sender.title(for: .normal)!
        let letter =
            Character(letterString.lowercased())
        currentGame.playerGuessed(letter: <#T##Character#>)
        updateUI()
    }
    
    
}

