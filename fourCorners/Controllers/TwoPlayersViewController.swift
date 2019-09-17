//
//  TwoPlayersViewController.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class TwoPlayersViewController: UIViewController {

    
    @IBOutlet weak var topButtonImage: UIImageView!
    @IBOutlet weak var bottomButtonImage: UIButton!
    @IBOutlet weak var startGameButton: UIButton!
    
    @IBOutlet weak var startRoundButton: UIButton!
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    
    
    @IBAction func startGameButtonPressed(_ sender: Any) {
    }
    
    
    @IBAction func startRoundButtonPressed(_ sender: Any) {
    }
    
    
    @IBAction func exitGameButtonPressed(_ sender: Any) {
    }
    
    
    @IBOutlet var playerButtonCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        configureImages()
    }
    
    private func configureImages() {
        topButtonImage.image = UIImage(named: "playerOneButton" )
    }
}
