//
//  ViewController.swift
//  fourCorners
//
//  Created by Sam Roman on 9/13/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class FourPlayersViewController: UIViewController {
    
    var winners: [Player]? {
        didSet {
            
            
            disableAll()
            if self.winners != nil {
                promptLabel.isHidden = false
                promptLabel.text = Player.winningLabel()
                startRoundButton.isHidden = true
                startRoundButton.isEnabled = false
                self.time = 4
                gameOver()
            }
            
        }
    }
    
    var timer = Timer()
    var time = 4
    

    //MARK: Outlet Collection
    
    @IBOutlet var collection: [UIButton]!
     @IBOutlet weak var startRoundButton: UIButton!

    @IBAction func buttonPress(_ sender: UIButton){
        //Switch to Increase score based on sender.tag of player button
        Player.increaseScore(player: sender.tag)
        startRoundButton.isHidden = false
        startRoundButton.isEnabled = true
        
        promptLabel.text = Player.roundEndLabel(player: sender.tag)
        promptLabel.isHidden = false
        winners = Player.winningCondition()
        
    }
    
    @IBAction func startRoundButton(_ sender: UIButton) {
        enableAll()
        promptLabel.text = Player.winningLabel()
        startRoundButton.isHidden = true
        startRoundButton.isEnabled = false
        
    }
    
    
    
    @IBOutlet weak var promptLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startAction(_ sender: UIButton!) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAction), userInfo: nil, repeats: true)
    }
    
    @objc func timeAction() {
        promptLabel.isHidden = false
        time -= 1
        promptLabel.text = String(time)
        
        if time == 0 {
            timer.invalidate()
            gameStart()
        }
    }
    
    func gameStart(){
        self.startButton.isEnabled = false
        self.startButton.isHidden = true
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
        Player.resetScore()
        
        
    }
    
    func disableAll(){
        collection.forEach({$0.isEnabled = false})
    }
    
    func enableAll(){
        collection.forEach({$0.isEnabled = true})
    }
    
    override func viewDidLoad() {
        disableAll()
        promptLabel.isHidden = true
        startRoundButton.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



/*
 
 //MARK: Outlet Collection
 
 @IBOutlet var collection: [UIButton]!
 
 
 @IBAction func buttonPress(_ sender: UIButton) {
 //Switch to Increase score based on sender.tag of player button
 Player.increaseScore(player: sender.tag)
 winners = Player.winningCondition()
 promptLabel.text = Prompt.mvpPromptArray.randomElement()!.prompt
 if winners != nil {
 promptLabel.text = "\(winners![0].name) wins!"
 gameOver()
 }
 }
 
 
 
 @IBOutlet weak var promptLabel: UILabel!
 
 @IBOutlet weak var startButton: UIButton!
 
 @IBAction func startAction(_ sender: UIButton!) {
 timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAction), userInfo: nil, repeats: true)
 }
 
 @objc func timeAction() {
 promptLabel.isHidden = false
 time -= 1
 promptLabel.text = String(time)
 
 if time == 0 {
 timer.invalidate()
 gameStart()
 }
 }
 
 func gameStart() {
 self.startButton.isEnabled = false
 self.startButton.isHidden = true
 promptLabel.isHidden = false
 promptLabel.text? =
 Prompt.mvpPromptArray.randomElement()!.prompt
 enableAll()
 }
 
 func gameOver(){
 self.startButton.isHidden = false
 self.startButton.isEnabled = true
 disableAll()
 Player.resetScore()
 
 
 }
 
 func disableAll(){
 for sender in collection {
 sender.isEnabled = false
 }
 }
 
 func enableAll(){
 for sender in collection {
 sender.isEnabled = true
 }
 }
 
 override func viewDidLoad() {
 disableAll()
 promptLabel.isHidden = true
 super.viewDidLoad()
 // Do any additional setup after loading the view.
 }
 
 
 }*/
