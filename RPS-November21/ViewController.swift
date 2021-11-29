//
//  ViewController.swift
//  RPS-November21
//
//  Created by Matthew Hanlon on 28/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(for: .start)
    }
    
    func updateUI(for state: GameState) {
        statusLabel.text = state.status
        
        switch state {
            case .start:
                
                view.backgroundColor = .lightGray
                signLabel.text = "🤖"
                
                playAgainButton.isHidden = true
                
                rockButton.isHidden = false
                paperButton.isHidden = false
                scissorsButton.isHidden = false
                
            case .win:
                view.backgroundColor = UIColor(red: 0.651, green: 0.792, blue: 0.651, alpha: 1)
            case .lose:
                view.backgroundColor = UIColor(red: 0.851, green: 0.424, blue: 0.412, alpha: 1)
            case .draw:
                view.backgroundColor = UIColor(red: 0.663, green: 0.663, blue: 0.663, alpha: 1)
        }
    }
    
    func play(userSign: Sign){
        let cpuSign = randomSign()
        
        let gameState = userSign.gameState(against: cpuSign)
        updateUI(for: gameState)
        
        signLabel.text = cpuSign.emoji
        
        switch userSign {
            case .rock:
                paperButton.isHidden = true
                scissorsButton.isHidden = true
            case .paper:
                rockButton.isHidden = true
                scissorsButton.isHidden = true
            case .scissors:
                rockButton.isHidden = true
                paperButton.isHidden = true
        }
        
        playAgainButton.isHidden = false
        
    }

    @IBAction func rockChosen(_ sender: UIButton) {
        play(userSign: .rock)
    }
    
    @IBAction func paperChosen(_ sender: UIButton) {
        play(userSign: .paper)
    }
    
    @IBAction func scissorChosen(_ sender: UIButton) {
        play(userSign: .scissors)
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        updateUI(for: .start)
    }
    
}

