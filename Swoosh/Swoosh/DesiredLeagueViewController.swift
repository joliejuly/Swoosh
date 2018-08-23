//
//  DesiredLeagueViewController.swift
//  Swoosh
//
//  Created by Julia Nikitina on 23/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

class DesiredLeagueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }

}
