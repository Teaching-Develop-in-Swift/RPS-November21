//
//  Sign.swift
//  RPS-November21
//
//  Created by Matthew Hanlon on 29/11/2021.
//

import Foundation

enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
    
    func gameState(against otherSign: Sign) -> GameState {
        if self == otherSign {
            return .draw
        }
        
        switch self {
        case .rock:
            if otherSign == .paper {
                return .lose
            } else {
                return .win
            }
        case .paper:
            if otherSign == .scissors {
                return .lose
            } else {
                return .win
            }
        case .scissors:
            if otherSign == .rock {
                return .lose
            } else {
                return .win
            }
        }
    }
    
}

func randomSign() -> Sign {
    let randomNumber = Int.random(in: 0...2)
    if randomNumber == 0 {
        return .rock
    } else if randomNumber == 1 {
        return .paper
    } else {
        return .scissors
    }
}
