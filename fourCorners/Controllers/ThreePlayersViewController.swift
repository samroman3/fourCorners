//
//  ThreePlayersViewController.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class ThreePlayersViewController: UIViewController {

    @IBOutlet weak var topRightButtonImage: UIImageView!
    @IBOutlet weak var bottomRightButtonImage: UIButton!
    @IBOutlet weak var middleButtonImage: UIImageView!
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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
