//
//  Scores.swift
//  fourCorners
//
//  Created by Phoenix McKnight on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import Foundation
import UIKit

class Players {
    
    var name: String
    var score: Int

    init (name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
    let playerOne = Players(name: "Player One", score: 0)
    let playerTwo = Players(name: "Player Two", score: 0)
    let playerThree = Players(name: "Player Three", score: 0)
    let playerFour = Players(name: "Player Four", score: 0)
    
    let players: [Players] = []
    
    func increaseScore (player: Int) {
        switch player {
            case 1:
                playerOne.score += 1
            case 2:
                playerTwo.score += 1
            case 3:
                playerThree.score += 1
            case 4:
                playerFour.score += 1
            default:
                print("not a player")
        }
    }
    
    func winningCondition() -> Players {
    
        let roundsPassed = [playerOne.score,playerTwo.score,playerThree.score,playerFour.score].reduce(0,+)
        if roundsPassed >= 5 {
            let players = [playerOne,playerTwo,playerThree,playerFour].sorted(by: {$0.score > $1.score} )
        }
         return players[0]
    }
    
}


