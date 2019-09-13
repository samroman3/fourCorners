//
//  emptyFile.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/13/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import Foundation

struct Prompt {
    var prompt: String
    var id: Int
    var created: String
}

let prompt1 = Prompt(prompt: "Find a No. 2 pencil", id: 1, created: "9-13-19")
let prompt2 = Prompt(prompt: "Run to a corner of the room and run back", id: 1, created: "9-13-19")
let prompt3 = Prompt(prompt: "Hug a mother with their consent", id: 1, created: "9-13-19")
let prompt4 = Prompt(prompt: "High five a member of Pursuit staff", id: 1, created: "9-13-19")
let prompt5 = Prompt(prompt: "Do five jumping jacks", id: 1, created: "9-13-19")

let mvpPromptArray = [prompt1, prompt2, prompt3, prompt4, prompt5]
