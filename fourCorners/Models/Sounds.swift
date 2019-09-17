//
//  Sounds.swift
//  fourCorners
//
//  Created by Sam Roman on 9/17/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit


struct Sounds {
    
 var launchSound: AVAudioPlayer

    mutating func setlaunchSound(){
    let path = Bundle.main.path(forResource: "LaunchSound.wav", ofType: nil)!
    let url = URL(fileURLWithPath: path)
    
    do {
        //create your audioPlayer in your parent class as a property
        self.launchSound = try AVAudioPlayer(contentsOf: url)
    } catch {
        print("couldn't load the file")
    }
}
    

}
