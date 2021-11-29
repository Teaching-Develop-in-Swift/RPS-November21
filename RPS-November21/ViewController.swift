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
    }

    @IBAction func rockChosen(_ sender: UIButton) {
    }
    
    @IBAction func paperChosen(_ sender: UIButton) {
    }
    
    @IBAction func scissorChosen(_ sender: UIButton) {
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
    }
    
}

