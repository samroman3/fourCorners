//
//  ViewController.swift
//  fourCorners
//
//  Created by Sam Roman on 9/13/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var winners: [Player]? {
        didSet {
            
           
            disableAll()
            if self.winners != nil {
                promptLabel.isHidden = false
                promptLabel.text = Player.winningLabel()
               startRoundButton.isHidden = true
                startRoundButton.isEnabled = false
                gameOver()
            }
            
           }
       }
//    }
    
    

    //MARK: Outlet Collection
    
    @IBOutlet var collection: [UIButton]!
    

    @IBAction func buttonPress(_ sender: UIButton) {
        //Switch to Increase score based on sender.tag of player button
    Player.increaseScore(player: sender.tag)
        startRoundButton.isHidden = false
        startRoundButton.isEnabled = true
        
        promptLabel.text = Player.roundEndLabel(player: sender.tag)
        promptLabel.isHidden = false
         winners = Player.winningCondition()
        
   
    


    }
    
    
    @IBOutlet weak var startRoundButton: UIButton!
    
    
    @IBOutlet weak var promptLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
   
    @IBAction func startRoundButton(_ sender: UIButton) {
   enableAll()
        promptLabel.text = Player.winningLabel()
        startRoundButton.isHidden = true
        startRoundButton.isEnabled = false
        
    }
    
    
    @IBAction func startAction(_ sender: UIButton!) {
        gameStart()

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

