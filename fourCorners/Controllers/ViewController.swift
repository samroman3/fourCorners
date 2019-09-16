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
            promptLabel.text = "\(winners)"
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
        promptLabel.text? = Prompt.mvpPromptArray.randomElement()!.prompt
        
    }
    
    func gameOver(){
        self.startButton.isHidden = false
        self.startButton.isEnabled = true
        
        
    }
    
   

    
    override func viewDidLoad() {
        promptLabel.text = ""
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

