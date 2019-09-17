//
//  LaunchScreenViewController.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit
import AVFoundation

class LaunchScreenViewController: UIViewController {

    var sounds = AVAudioPlayer() {
        didSet {
            sounds.play()
        }
    }
    @IBOutlet weak var topLeftImage: UIImageView!
    @IBOutlet weak var topRightImage: UIImageView!
    @IBOutlet weak var bottomLeftImage: UIImageView!
    @IBOutlet weak var bottomRightImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setSounds(){
        self.sounds = Sounds.setlaunchSound()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setSounds()
        navigationController?.navigationBar.isHidden = true
    }
    

    

}
