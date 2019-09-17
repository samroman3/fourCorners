//
//  ViewController.swift
//  fourCorners
//
//  Created by Sam Roman on 9/13/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit
import AVFoundation

class FourPlayersViewController: UIViewController {
    
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
    

    //MARK: Outlet Collection
    
    @IBOutlet weak var promptLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet var collection: [UIButton]!
     @IBOutlet weak var startRoundButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    
    @IBOutlet weak var playerOneScoreLabel: UILabel!
    @IBOutlet weak var playerTwoScoreLabel: UILabel!
    @IBOutlet weak var playerThreeScoreLabel: UILabel!
    @IBOutlet weak var playerFourScoreLabel: UILabel!
    
    
    @IBAction func buttonPress(_ sender: UIButton){
        pressSound.play()
        //Switch to Increase score based on sender.tag of player button
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
    
    @IBAction func startRoundButton(_ sender: UIButton) {
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
    
    @IBAction func exitButton(_ sender: UIButton) {
        exitSound.play()
        sleep(1)
        navigationController?.popToRootViewController(animated: false)
    }
    
    @IBAction func startAction(_ sender: UIButton!) {
        
        Player.resetScore()
        resetLabels()
        exitButton.isHidden = true
        startSound.play()
        time = 4
        startButton.isEnabled = false
        startButton.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAction), userInfo: nil, repeats: true)
    }
    
    @objc func timeAction() {
        promptLabel.isHidden = false
        time -= 1
        promptLabel.text = " \(time) "
        
        if time == 0 {
            timer.invalidate()
            //startButton.isHidden = true
            // startButton.isEnabled = false
            gameStart()
            
            
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        disableAll()
        promptLabel.isHidden = true
        startRoundButton.isHidden = true
        exitButton.isHidden = true
        exitButton.isEnabled = false
        // Do any additional setup after loading the view.
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
        self.startButton.isHidden = false
        self.startButton.isEnabled = true
        disableAll()
        
        
    }
    
    func disableAll(){
        collection.forEach({$0.isEnabled = false})
    }
    
    func enableAll(){
        collection.forEach({$0.isEnabled = true})
    }
    
    
    private func updateScoreLabels(senderTag: Int) {
        switch senderTag {
        case 1:
            playerOneScoreLabel.text = " \(Player.playerOne.score) "
        case 2:
            playerTwoScoreLabel.text = " \(Player.playerTwo.score) "
        case 3:
            playerThreeScoreLabel.text = " \(Player.playerThree.score) "
        case 4:
            playerFourScoreLabel.text = " \(Player.playerFour.score) "
        default:
            print("no button")
        }
    }

    private func resetLabels() {
        playerOneScoreLabel.text = ""
        playerTwoScoreLabel.text = ""
        playerThreeScoreLabel.text = ""
        playerFourScoreLabel.text = ""
        promptLabel.text = ""
    }
}


