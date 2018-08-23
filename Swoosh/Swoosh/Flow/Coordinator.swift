//
//  Coordinator.swift
//  Swoosh
//
//  Created by Julia Nikitina on 23/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

class Coordinator {
    
    var router: UINavigationController
    var player: Player!
    
    init(router: UINavigationController) {
        self.router = router
        self.player = Player()
    }
    
    func start() {
        router.pushViewController(makeStartScreenModule(), animated: true)
    }
    
    private func makeStartScreenModule() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let startScreen = storyboard.instantiateViewController(withIdentifier: "startScreen")
        startScreen.player = self.player
        router.setViewControllers([startScreen], animated: false)
        return startScreen
    }
}
