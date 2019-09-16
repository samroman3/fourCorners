//
//  Scores.swift
//  fourCorners
//
//  Created by Phoenix McKnight on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import Foundation
import UIKit

class  Players{
    
    var name:String
    var score:Int
    var round:Int

    init (name:String, score:Int, round:Int) {
        self.name = name
        self.score = score
        self.round = round
    }
    let playerOne = Players(name: "Player One", score: 0, round: 0)
    let playerTwo = Players(name: "Player Two", score: 0, round: 0)
    let playerThree = Players(name: "Player Three", score: 0, round: 0)
    let playerFour = Players(name: "Player Four", score: 0, round:0)
    
    let players:[Players] = []
    
    func increaseScore(player:Int) {
        switch player {
        case 1:
            playerOne.score += 1
            playerOne.round += 1
        case 2:
            playerTwo.score += 1
            playerTwo.round += 1
            
        case 3:
            playerThree.score += 1
            playerThree.round += 1
        case 4:
            playerFour.score += 1
            playerFour.round += 1
            
        default:
            print("not a player")
        }
    }
    func winningCondition() -> Players {
        
        
            
           let playersRound = [playerOne.round,playerTwo.round,playerThree.round,playerFour.round].reduce(0,+)
        if playersRound >= 5 {
            let players = [playerOne,playerTwo,playerThree,playerFour].sorted(by: {$0.score > $1.score} )
        }
         return players[0]
    }
    
}


