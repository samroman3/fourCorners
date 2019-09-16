//
//  Timer.swift
//  fourCorners
//
//  Created by Aaron Pachesa on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import Foundation

// this is in the viewcontroller
// ib outlet weak label

var time = 60
var timer = Timer()

// as the game starts

timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)

func action() {
    time -= 1
    lbl.text = String(time)
    
}

// reset

// timer.invalidate()

time = 60
lbl.text = String(Time)

