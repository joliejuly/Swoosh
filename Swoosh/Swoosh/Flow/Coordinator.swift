//
//  Coordinator.swift
//  Swoosh
//
//  Created by Julia Nikitina on 23/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

final class Coordinator {
    
    var router: UINavigationController
    var player: Player!
    
    init(router: UINavigationController) {
        self.router = router
        self.player = Player()
    }
    
    func start() {
        router.setViewControllers([makeStartScreenModule()], animated: false)
    }
    
    private func makeStartScreenModule() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let startScreen = storyboard.instantiateViewController(withIdentifier: "startScreen") as? ViewController else { return UIViewController() }
        startScreen.player = self.player
        return startScreen
    }
}
