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
            if winners != nil {
                promptLabel.text = "\(winners![0].name) wins!"
                gameOver()
                
            }
          
        }
    }
    

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
        gameStart()

    }
    
    func gameStart(){
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


}

