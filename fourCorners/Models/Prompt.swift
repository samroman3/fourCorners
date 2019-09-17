import Foundation

struct Prompt {
    var prompt: String
  static var usedPrompts = [String()]
    
    static let mvpPromptArray = [prompt1, prompt2, prompt3, prompt4, prompt5]
    static func randomPrompt() -> String {

        let newPrompt = Prompt.mvpPromptArray.randomElement()?.prompt
        if !usedPrompts.contains(newPrompt!) {
            usedPrompts.append(newPrompt!)
            return newPrompt!
        } else {
            usedPrompts = [String()]
           
            let newNewPrompt = Prompt.mvpPromptArray.randomElement()?.prompt
            usedPrompts.append(newNewPrompt!)
            return newNewPrompt!
            
        }
        
//    static func nextPrompt(round: Int) -> String {
//
//        return Prompt.mvpPromptArray[round].prompt
//    }
    }
}


private let prompt1 = Prompt(prompt: "Find a No. 2 pencil")
private let prompt2 = Prompt(prompt: "Run to a corner of the room and run back")
private let prompt3 = Prompt(prompt: "Hug a mother (with their consent)")
private let prompt4 = Prompt(prompt: "High five a member of Pursuit staff")
private let prompt5 = Prompt(prompt: "Do five jumping jacks")

