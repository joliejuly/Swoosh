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
    
    var player: Player?
    weak var coordinator: Coordinator?
    
    
    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    //MARK: Actions
    
    @IBAction func leagueIsChosen(_ sender: UIButton) {
        
        updateLeagueButtons(via: sender)
        handleChosenLeague(with: sender.tag)
        showNextBtn()
    }
    
    @IBAction func nextButtonTapped(_ sender: BorderButton) {
        coordinator?.presentBeginnerModule()
    }
}

//MARK: Helpers
extension DesiredLeagueViewController {
    
    private func setUpViews() {
        let navBar = navigationController?.navigationBar
        navBar?.isHidden = false
        nextBtn.alpha = 0
    }
    
    private func showNextBtn() {
        UIView.animate(withDuration: 0.8) {
            self.nextBtn.alpha = 1
        }
    }
    
    private func updateLeagueButtons(via button: UIButton) {
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        for (index, leagueButton) in leagueButtons.enumerated() {
            if button.tag != index {
                leagueButton.backgroundColor = .clear
            }
        }
    }
    
    private func handleChosenLeague(with tag: Int) {
        player?.desiredLeague = League(rawValue: tag)
        coordinator?.player = player
    }
}
