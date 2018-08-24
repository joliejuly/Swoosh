//
//  BeginnerViewController.swift
//  Swoosh
//
//  Created by Julia Nikitina on 23/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

final class BeginnerViewController: UIViewController {

    @IBOutlet var levelButtons: [UIButton]!
    @IBOutlet weak var finishBtn: BorderButton!
    
    var player: Player?
    weak var coordinator: Coordinator?

    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finishBtn.alpha = 0
    }

    //MARK: Actions
    
    @IBAction func levelBtnTapped(_ sender: UIButton) {
        updateViewsAfterSelection(button: sender)
        handleSelection(with: sender.tag)
    }
    
    @IBAction func finishBtnTapped(_ sender: UIButton) {
        coordinator?.finishFlow?(player)
    }
    
    //MARK: Helpers
    
    private func updateViewsAfterSelection(button: UIButton) {
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8123929795)

        UIView.animate(withDuration: 0.4) {
            self.finishBtn.alpha = 1
        }
    }
    
    private func handleSelection(with tag: Int) {
        for (index, button) in levelButtons.enumerated() {
            if tag != index {
                button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.39)
            }
        }
        player?.selectedSkillLevel = SkillLevel(rawValue: tag)
    }
    
}
