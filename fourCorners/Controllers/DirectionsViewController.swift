//
//  DirectionsViewController.swift
//  fourCorners
//
//  Created by Sam Roman on 9/18/19.
//  Copyright © 2019 Sam Roman. All rights reserved.
//

import UIKit

class DirectionsViewController: UIViewController {

    
    @IBAction func exitGameButtonPressed(_ sender: Any) {
        sleep(1)
        navigationController?.popViewController(animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
