//
//  ThreePlayersViewController.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class ThreePlayersViewController: UIViewController {
    
    
    var winners: [Player]? {
        didSet {
            
            
            disableAll()
            if self.winners != nil {
                promptLabel.isHidden = false
                promptLabel.text = Player.winningLabel()
                startRoundButton.isHidden = true
                startRoundButton.isEnabled = false
                exitButton.isHidden = false
                exitButton.isEnabled = true
                self.time = 4
                gameOver()
            }
            
        }
    }
    
    var timer = Timer()
    var time = 0
    
    
    

    @IBOutlet weak var topRightButtonImage: UIImageView!
    @IBOutlet weak var bottomRightButtonImage: UIButton!
    @IBOutlet weak var middleButtonImage: UIImageView!
    @IBOutlet weak var startGameButton: UIButton!
    
    @IBOutlet weak var startRoundButton: UIButton!
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    
    @IBOutlet var playerButtonCollection: [UIButton]!
    
    @IBAction func buttonPress(_ sender: UIButton){
        //Switch to Increase score based on sender.tag of player button
        Player.increaseScore(player: sender.tag)
        startRoundButton.isHidden = false
        startRoundButton.isEnabled = true
        exitButton.isHidden = false
        exitButton.isEnabled = true
        promptLabel.text = Player.roundEndLabel(player: sender.tag)
        promptLabel.isHidden = false
        winners = Player.winningCondition()
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        disableAll()
        promptLabel.isHidden = true
        startRoundButton.isHidden = true
        exitButton.isHidden = true
        exitButton.isEnabled = false
        
        
    }
    
    
    
    @IBAction func startGameButtonPressed(_ sender: Any) {
        
        time = 4
        startGameButton.isEnabled = false
        startGameButton.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAction), userInfo: nil, repeats: true)
    }
    
    @objc func timeAction() {
        promptLabel.isHidden = false
        time -= 1
        promptLabel.text = String(time)
        
        if time == 0 {
            timer.invalidate()
            //startButton.isHidden = true
            // startButton.isEnabled = false
            gameStart()
            
            
        }
    }
    
    
    @IBAction func startRoundButtonPressed(_ sender: Any) {
        
            time = 4
            enableAll()
            promptLabel.isHidden = true
            exitButton.isHidden = true
            exitButton.isEnabled = false
            startRoundButton.isHidden = true
            startRoundButton.isEnabled = false
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAction), userInfo: nil, repeats: true)
            
        }
    
    
    
    @IBAction func exitGameButtonPressed(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: false)
    }
    
    
    
    
    
    
    
    
    
    func gameStart(){
        //        self.startButton.isEnabled = false
        //        self.startButton.isHidden = true
        startRoundButton.isHidden = true
        startRoundButton.isEnabled = false
        promptLabel.isHidden = false
        promptLabel.text? = Player.winningLabel()
        
        enableAll()
        
    }
    
    func gameOver(){
        self.startGameButton.isHidden = false
        self.startGameButton.isEnabled = true
        disableAll()
        Player.resetScore()
        
        
    }
    
    func disableAll(){
        playerButtonCollection.forEach({$0.isEnabled = false})
    }

    
    func enableAll(){
        playerButtonCollection.forEach({$0.isEnabled = true})
    }
    
    

}
