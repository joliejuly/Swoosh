//
//  Player.swift
//  Swoosh
//
//  Created by Julia Nikitina on 23/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import Foundation

struct Player {
    var desiredLeague: League?
    var selectedSkillLevel: SkillLevel?
    
    var leagueDescription: String {
        guard let league = desiredLeague else { return "" }
        switch league {
        case .mens: return "Mens"
        case .womens: return "Womens"
        case .coed: return "Co-ed"
        }
    }
    
    var skillDescription: String {
        guard let skill = selectedSkillLevel else { return "" }
        switch skill {
        case .beginner: return "beginner's"
        case .baller: return "baller's"
        }
    }
}

enum League: Int {
    case mens = 0
    case womens = 1
    case coed = 2
}

enum SkillLevel: Int {
    case beginner = 0
    case baller = 1
}


