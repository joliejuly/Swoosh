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
    var finishFlow: ((Player?) -> Void)? //instantiated in startVC
    
    init(router: UINavigationController) {
        self.router = router
        self.player = Player()
    }
    
    func start() {
        router.setViewControllers([makeStartScreenModule()], animated: false)
    }
    
    func presentLeagueModule() {
        let leagueVC = makeLeagueModule()
        router.pushViewController(leagueVC, animated: true)
    }
    
    func presentBeginnerModule() {
        let beginnerVC = makeBeginnerModule()
        router.pushViewController(beginnerVC, animated: true)
    }
}

//MARK: - Factory methods

extension Coordinator {
    private func makeModule(with id: String) -> UIViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: id)
    }
    
    private func makeStartScreenModule() -> UIViewController {
        guard let startScreen = makeModule(with: "startScreen") as? StartViewController else { fatalError("No ViewController screen in Main storyboard") }
        startScreen.player = self.player
        startScreen.coordinator = self
        return startScreen
    }
    
    private func makeLeagueModule() -> DesiredLeagueViewController {
        guard let leagueScreen = makeModule(with: "leagueScreen") as? DesiredLeagueViewController else { fatalError("No DesiredLeagueViewController screen in Main storyboard") }
        leagueScreen.player = self.player
        leagueScreen.coordinator = self
        return leagueScreen
    }
    
    private func makeBeginnerModule() -> BeginnerViewController {
        guard let beginnerScreen = makeModule(with: "beginnerScreen") as? BeginnerViewController else { fatalError("No BeginnerViewController screen in Main storyboard") }
        beginnerScreen.player = self.player
        beginnerScreen.coordinator = self
        return beginnerScreen
    }
}
