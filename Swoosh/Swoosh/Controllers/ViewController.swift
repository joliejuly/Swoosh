//
//  ViewController.swift
//  Swoosh
//
//  Created by Julia Nikitina on 22/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    var player: Player!
    
    @IBOutlet weak var getStartedBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    private func setUpViews() {
        getStartedBtn.alpha = 0
        
        UIView.animate(withDuration: 0.8, delay: 0.4, options: .curveEaseInOut, animations: {
            self.getStartedBtn.alpha = 1
        }, completion: nil)
    }

}

