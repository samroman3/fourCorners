//
//  Scores.swift
//  fourCorners
//
//  Created by Phoenix McKnight on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import Foundation
import UIKit

struct Player {
    
    var name: String
    var score: Int
    
    static var playerOne = Player(name: "Player One", score: 0)
    static var playerTwo = Player(name: "Player Two", score: 0)
    static var playerThree = Player(name: "Player Three", score: 0)
    static var playerFour = Player(name: "Player Four", score: 0)
    
    static func increaseScore (player: Int) {
        switch player {
            case 1:
                Player.playerOne.score += 1
            case 2:
                Player.playerTwo.score += 1
            case 3:
                Player.playerThree.score += 1
            case 4:
                Player.playerFour.score += 1
            default:
                print("not a player")
        }
    }
    
    static func winningCondition() -> [Player]? {
        let roundsPassed = [Player.playerOne.score,Player.playerTwo.score,Player.playerThree.score,Player.playerFour.score].reduce(0,+)
        if roundsPassed >= 5 {
            let playersSortedByScore = [Player.playerOne,Player.playerTwo,Player.playerThree,Player.playerFour].sorted(by: {$0.score > $1.score} )
            
            var winners = [Player]()
            
            for player in playersSortedByScore {
                if player.score == playersSortedByScore[0].score {
                    winners.append(player)
                    return winners
                }
            }
        }
        return nil
    }
}
