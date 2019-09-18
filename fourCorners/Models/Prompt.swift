import Foundation

struct Prompt {
    var prompt: String

    
    static let mvpPromptArray = [prompt1, prompt2, prompt3, prompt4, prompt5, prompt6, prompt7, prompt8, prompt9, prompt10]
    static func randomPrompt() -> String {
        var usedPrompts = [String()]
        let newPrompt = Prompt.mvpPromptArray.randomElement()?.prompt
        if !usedPrompts.contains(newPrompt!) {
            usedPrompts.append(newPrompt!)
            return newPrompt!
        }
        else {
            usedPrompts = [String()]
            let newNewPrompt = Prompt.mvpPromptArray.randomElement()?.prompt
            return newNewPrompt!
            
        }
        

    }
    
    
}


private let prompt1 = Prompt(prompt: "Find a pen and bring it back")
private let prompt2 = Prompt(prompt: "Run to a corner of the room and run back")
private let prompt3 = Prompt(prompt: "Hug someone wearing the color red (with their consent)")
private let prompt4 = Prompt(prompt: "High five a member of Pursuit staff")
private let prompt5 = Prompt(prompt: "Do two jumping jacks")
private let prompt6 = Prompt(prompt: "Do the macarena!")
private let prompt7 = Prompt(prompt: "Win at rock paper scissors!")
private let prompt8 = Prompt(prompt: "Yell out the color of David's jacket")
private let prompt9 = Prompt(prompt: "Spell your name with your butt!")
private let prompt10 = Prompt(prompt: "Draw a smiley on the board :)")


