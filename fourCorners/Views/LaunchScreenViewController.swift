//
//  LaunchScreenViewController.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    @IBOutlet weak var topLeftImage: UIImageView!
    @IBOutlet weak var topRightImage: UIImageView!
    @IBOutlet weak var bottomLeftImage: UIImageView!
    @IBOutlet weak var bottomRightImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureImages()
        configureLabels()
    }
    
    private func configureImages() {
        topLeftImage.image = UIImage(named: "topLeftBKGD")
        topRightImage.image = UIImage(named: "topRightBKGD")
        bottomLeftImage.image = UIImage(named: "bottomLeftBKGD")
        bottomRightImage.image = UIImage(named: "bottomRightBGKD")
    }
    
    private func configureLabels() {
        
    }

}
