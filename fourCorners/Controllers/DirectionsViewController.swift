//
//  DirectionsViewController.swift
//  fourCorners
//
//  Created by Sunni Tang on 9/18/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class DirectionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitGameButtonPressed(_ sender: Any) {
        sleep(1)
    navigationController?.popViewController(animated: false)
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
