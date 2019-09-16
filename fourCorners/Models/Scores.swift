//
//  Scores.swift
//  fourCorners
//
//  Created by Phoenix McKnight on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import Foundation
import UIKit

struct Players {
    
    var name: String
    var score: Int
    
    static var playerOne = Players(name: "Player One", score: 0)
    static var playerTwo = Players(name: "Player Two", score: 0)
    static var playerThree = Players(name: "Player Three", score: 0)
    static var playerFour = Players(name: "Player Four", score: 0)
    
    let players: [Players] = []
    
    mutating func increaseScore (player: Int) {
        switch player {
            case 1:
                Players.playerOne.score += 1
            case 2:
                Players.playerTwo.score += 1
            case 3:
                Players.playerThree.score += 1
            case 4:
                Players.playerFour.score += 1
            default:
                print("not a player")
        }
    }
    
    func winningCondition() -> Players {
    
        let roundsPassed = [Players.playerOne.score,Players.playerTwo.score,Players.playerThree.score,Players.playerFour.score].reduce(0,+)
        if roundsPassed >= 5 {
            let players = [Players.playerOne,Players.playerTwo,Players.playerThree,Players.playerFour].sorted(by: {$0.score > $1.score} )
        }
         return players[0]
    }
    
}


