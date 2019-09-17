//
//  SettingsViewController.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/16/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    var menuSound = Sounds.setMenuSound()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func twoPlayerButton(_ sender: UIButton) {
    menuSound.play()
    }
    
    @IBAction func threePlayerButton(_ sender: UIButton) {
    menuSound.play()
    }
   
    @IBAction func fourPlayerButton(_ sender: UIButton) {
    menuSound.play()
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
