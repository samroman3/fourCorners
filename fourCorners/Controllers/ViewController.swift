//
//  ViewController.swift
//  fourCorners
//
//  Created by Sam Roman on 9/13/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    //MARK: Outlet Collection
    
    @IBOutlet var collection: [UIButton]!
    

    @IBAction func buttonPress(_ sender: UIButton) {
        //Switch to Increase score based on sender.tag of player button
        
//        switch sender.tag {
//        case 1:
//            Players.playerOne.increaseScore(player: 1)
//        case 2:
//            Players.playerTwo.increaseScore(player: 2)
//        case 3:
//            Players.playerThree.increaseScore(player: 3)
//        case 4:
//            Players.playerFour.increaseScore(player: 4)
//        default:
//           return
//        }
    
    }
    
    
    
    @IBOutlet weak var promptLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    func gameStart(){
        self.startButton.isEnabled = false
        promptLabel.isHidden = false
        promptLabel.text? = Prompt.mvpPromptArray.randomElement()!.prompt
        
    }
    
    func gameOver(){
        self.startButton.isHidden = false
        self.startButton.isEnabled = true
        
    }
    
//    func checkWin(){
//        Players.winningCondition(<#T##Players#>)
//    }
//
    
    override func viewDidLoad() {
        promptLabel.text = ""
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

