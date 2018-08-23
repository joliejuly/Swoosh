//
//  ViewController.swift
//  Swoosh
//
//  Created by Julia Nikitina on 22/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}

