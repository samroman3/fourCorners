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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        configureImages()
    }
    
    private func configureImages() {
        topButtonImage.image = UIImage(named: "playerOneButton" )
    }
}
