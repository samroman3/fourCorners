//
//  fourCornersTests.swift
//  fourCornersTests
//
//  Created by Sam Roman on 9/13/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import XCTest
@testable import fourCorners

class fourCornersTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testPromptHasData() {
        let prompts = Prompt.mvpPromptArray
        
        XCTAssertTrue(prompts.count == 5, "Should be 5 prompts, have \(prompts.count) prompts")
    }
    
    func testIncreaseScore () {
        
    }
    
    func testWinningCondition () {
        
    }

}
