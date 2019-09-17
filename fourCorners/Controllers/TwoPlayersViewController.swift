//
//  TwoPlayersViewController.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit
import AVFoundation

class TwoPlayersViewController: UIViewController {
    var pressSound = Sounds.setPressSound()
    var exitSound = Sounds.setEndGameSound()
    var startSound = Sounds.setStartSound()
    
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

    @IBOutlet weak var playerOneScoreLabel: UILabel!
    
    @IBOutlet weak var playerTwoScoreLabel: UILabel!
    
    @IBOutlet weak var topButtonImage: UIImageView!
    @IBOutlet weak var bottomButtonImage: UIButton!
    @IBOutlet weak var startGameButton: UIButton!
    
    @IBOutlet weak var startRoundButton: UIButton!
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    
    @IBOutlet var playerButtonCollection: [UIButton]!
    
    @IBAction func buttonPress(_ sender: UIButton){
        //Switch to Increase score based on sender.tag of player button
        pressSound.play()
        Player.increaseScore(player: sender.tag)
        startRoundButton.isHidden = false
        startRoundButton.isEnabled = true
        exitButton.isHidden = false
        exitButton.isEnabled = true
        promptLabel.text = Player.roundEndLabel(player: sender.tag)
        promptLabel.isHidden = false
        winners = Player.winningCondition()
        updateScoreLabels(senderTag: sender.tag)
        
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
        Player.resetScore()
        resetLabels()
        exitButton.isHidden = true
        startSound.play()
        time = 4
        startGameButton.isEnabled = false
        startGameButton.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAction), userInfo: nil, repeats: true)
    }
    
    @objc func timeAction() {
        promptLabel.isHidden = false
        time -= 1
        promptLabel.text = " \(time) "
        disableAll()
        
        if time == 0 {
            timer.invalidate()
            
            //startButton.isHidden = true
            // startButton.isEnabled = false
            gameStart()
            
            
        }
    }
    
    
    @IBAction func startRoundButtonPressed(_ sender: Any) {
        startSound.play()
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
        exitSound.play()
        sleep(1)
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
        
        
        
    }
    
    func disableAll(){
        playerButtonCollection.forEach({$0.isEnabled = false})
    }
    
    
    func enableAll(){
        playerButtonCollection.forEach({$0.isEnabled = true})
    }
    
    private func updateScoreLabels(senderTag: Int) {
        switch senderTag {
        case 1:
            playerOneScoreLabel.text = " \(Player.playerOne.score) "
        case 2:
            playerTwoScoreLabel.text = " \(Player.playerTwo.score) "
        default:
            print("no button")
        }
    }
    
    
    private func resetLabels() {
        playerOneScoreLabel.text = ""
        playerTwoScoreLabel.text = ""
        promptLabel.text = ""
    }
    
    
    
    }
    
    
  
    
    
    

