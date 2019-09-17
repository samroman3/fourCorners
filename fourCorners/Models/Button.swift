//
//  Button.swift
//  fourCorners
//
//  Created by Aaron Pachesa on 9/17/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import Foundation

import UIKit
import Foundation


extension UIButton {
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.4
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.4
        pulse.damping = 0.4
        
        layer.add(pulse, forKey: nil)
        
    }
    
    
    
}
