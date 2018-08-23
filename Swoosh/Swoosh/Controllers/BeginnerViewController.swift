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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finishBtn.alpha = 0
    }

    @IBAction func levelBtnTapped(_ sender: UIButton) {
        
        sender.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8123929795)
        
        for (index, button) in levelButtons.enumerated() {
            if sender.tag != index {
                button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.39)
            }
        }
        
        UIView.animate(withDuration: 0.4) {
            self.finishBtn.alpha = 1
        }
    }
    
    @IBAction func finishBtnTapped(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
}
