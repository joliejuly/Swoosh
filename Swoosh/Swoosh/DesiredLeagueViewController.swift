//
//  DesiredLeagueViewController.swift
//  Swoosh
//
//  Created by Julia Nikitina on 23/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

class DesiredLeagueViewController: UIViewController {
    
    @IBOutlet var leagueButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    
    @IBAction func leagueIsChosen(_ sender: UIButton) {
        sender.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        for (index, button) in leagueButtons.enumerated() {
            if sender.tag != index {
                button.backgroundColor = .clear
            }
        }
        
        
    }
    
}
