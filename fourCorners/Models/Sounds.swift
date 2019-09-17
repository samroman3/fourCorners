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

    static func setlaunchSound() -> AVAudioPlayer {
    var sound = AVAudioPlayer()
    let path = Bundle.main.path(forResource: "LaunchSound.wav", ofType: nil)!
    let url = URL(fileURLWithPath: path)
    
    do {
        //create your audioPlayer in your parent class as a property
         sound = try AVAudioPlayer(contentsOf: url)
    } catch {
        print("couldn't load the file")
    }
     return sound
    }
        static func setStartSound() -> AVAudioPlayer {
            var sound = AVAudioPlayer()
            let path = Bundle.main.path(forResource: "synthOne.wav", ofType: nil)!
            let url = URL(fileURLWithPath: path)
            
            do {
                //create your audioPlayer in your parent class as a property
                sound = try AVAudioPlayer(contentsOf: url)
            } catch {
                print("couldn't load the file")
            }
            return sound
    }
            static func setEndGameSound() -> AVAudioPlayer {
                var sound = AVAudioPlayer()
                let path = Bundle.main.path(forResource: "synthTwo.wav", ofType: nil)!
                let url = URL(fileURLWithPath: path)
                
                do {
                    //create your audioPlayer in your parent class as a property
                    sound = try AVAudioPlayer(contentsOf: url)
                } catch {
                    print("couldn't load the file")
                }
                return sound
    }
                static func setPressSound() -> AVAudioPlayer {
                    var sound = AVAudioPlayer()
                    let path = Bundle.main.path(forResource: "synthThree.wav", ofType: nil)!
                    let url = URL(fileURLWithPath: path)
                    
                    do {
                        //create your audioPlayer in your parent class as a property
                        sound = try AVAudioPlayer(contentsOf: url)
                    } catch {
                        print("couldn't load the file")
                    }
                    return sound
}
    static func setTimerSound() -> AVAudioPlayer {
        var sound = AVAudioPlayer()
        let path = Bundle.main.path(forResource: "timeAudioSave.wav", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            //create your audioPlayer in your parent class as a property
            sound = try AVAudioPlayer(contentsOf: url)
        } catch {
            print("couldn't load the file")
        }
        return sound
    }
    static func setMenuSound() -> AVAudioPlayer {
        var sound = AVAudioPlayer()
        let path = Bundle.main.path(forResource: "menuSave.wav", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            //create your audioPlayer in your parent class as a property
            sound = try AVAudioPlayer(contentsOf: url)
        } catch {
            print("couldn't load the file")
        }
        return sound
    }
//    static func setPressSound() -> AVAudioPlayer {
//        var sound = AVAudioPlayer()
//        let path = Bundle.main.path(forResource: "synthThree.wav", ofType: nil)!
//        let url = URL(fileURLWithPath: path)
//        
//        do {
//            //create your audioPlayer in your parent class as a property
//            sound = try AVAudioPlayer(contentsOf: url)
//        } catch {
//            print("couldn't load the file")
//        }
//        return sound
//    }

}
