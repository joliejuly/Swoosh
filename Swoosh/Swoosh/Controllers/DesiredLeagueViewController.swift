//
//  DesiredLeagueViewController.swift
//  Swoosh
//
//  Created by Julia Nikitina on 23/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

final class DesiredLeagueViewController: UIViewController {
    
    @IBOutlet var leagueButtons: [UIButton]!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
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
        showNextBtn()
    }
    
    private func setUpViews() {
        navigationController?.navigationBar.isHidden = false
        nextBtn.alpha = 0
    }
    
    private func showNextBtn() {
        UIView.animate(withDuration: 0.8) {
             self.nextBtn.alpha = 1
        }
    }
    
}
