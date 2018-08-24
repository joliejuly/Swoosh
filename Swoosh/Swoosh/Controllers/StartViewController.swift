//
//  ViewController.swift
//  Swoosh
//
//  Created by Julia Nikitina on 22/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

final class StartViewController: UIViewController {

    var player: Player?
    weak var coordinator: Coordinator?
    
    @IBOutlet weak var getStartedBtn: BorderButton!
    @IBOutlet weak var leagueLabel: UILabel!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        setUpBindings()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }

    //MARK: Overriden properties
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //MARK: Actions
    @IBAction func getStartedBtnTapped(_ sender: BorderButton) {
        coordinator?.presentLeagueModule()
    }
    
    
    //MARK: Helpers
    private func setUpViews() {
        getStartedBtn.alpha = 0
        
        UIView.animate(withDuration: 0.8, delay: 0.4, options: .curveEaseInOut, animations: {
            self.getStartedBtn.alpha = 1
        }, completion: nil)
    }
    
    private func setUpBindings() {
        
        coordinator?.finishFlow = { [weak self] player in
            
            guard let player = player else { return }
            
            self?.leagueLabel.text = "You've chosen \(player.leagueDescription) league and \(player.skillDescription) level of players"
            self?.leagueLabel.adjustsFontSizeToFitWidth = true
            self?.getStartedBtn.setTitle("START OVER AGAIN", for: .normal)
            self?.coordinator?.router.popToRootViewController(animated: true)
        }
    }

}

