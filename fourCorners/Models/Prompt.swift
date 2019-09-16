import Foundation

struct Prompt {
    var prompt: String
    
    static let mvpPromptArray = [prompt1, prompt2, prompt3, prompt4, prompt5]
    static func randomPrompt() -> String {
        return Prompt.mvpPromptArray.randomElement()?.prompt ?? "No prompt selected"
    }
}


private let prompt1 = Prompt(prompt: "Find a No. 2 pencil")
private let prompt2 = Prompt(prompt: "Run to a corner of the room and run back")
private let prompt3 = Prompt(prompt: "Hug a mother (with their consent)")
private let prompt4 = Prompt(prompt: "High five a member of Pursuit staff")
private let prompt5 = Prompt(prompt: "Do five jumping jacks")
