import Foundation
import UIKit

struct Player {
    
    var name: String
    var score: Int
    
    static var playerOne = Player(name: "Player One", score: 0)
    static var playerTwo = Player(name: "Player Two", score: 0)
    static var playerThree = Player(name: "Player Three", score: 0)
    static var playerFour = Player(name: "Player Four", score: 0)
    
    static var playerArray = [Player.playerOne,Player.playerTwo,Player.playerThree,Player.playerFour]
    
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
                    
                }
            }
            return winners
        } else {
            return nil
        }
    }
    
    static func winningLabel() -> String {
        if Player.winningCondition() != nil {
            switch Player.winningCondition()!.count {
            case 1:
                return "Winner : \(Player.winningCondition()![0].name)"
            case 2:
                return "Winners : \(Player.winningCondition()![0].name) and \(Player.winningCondition()![1].name)"
                
            case 3:
                return "Winners : \(Player.winningCondition()![0].name), \(Player.winningCondition()![1].name) and \(Player.winningCondition()![2].name) "
                
            case 4:
                return "Winners : \(Player.winningCondition()![0].name),\(Player.winningCondition()![1].name),\(Player.winningCondition()![2].name) and \(Player.winningCondition()![3].name)"
                
            default:
                return "not a player"
            }
        } else {
            return Prompt.randomPrompt()
        }
    }
    static func roundEndLabel(player:Int) -> String {
        switch player {
        case 1:
            return "Good job \(Player.playerOne.name)"
        case 2:
            return "Good job \(Player.playerTwo.name)"
        case 3:
            return "Good job \(Player.playerThree.name)"
        case 4:
            return "Good job \(Player.playerFour.name)"
            
        default:
            return "Not a valid player"
        }
    }
    static func resetScore(){
        playerOne.score = 0
        playerTwo.score = 0
        playerThree.score = 0
        playerFour.score = 0
        
    }
    
}






