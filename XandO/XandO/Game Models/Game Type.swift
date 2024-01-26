//
//  Game Type.swift
//  XandO
//
//  Created by Shady Adel on 26/01/2024.
//

import Foundation

enum GameType {
    case single, bot, peer, undetermined
    
    var description: String {
        switch self {
        case .single:
            "Share your iPhone/iPad and play against a friend."
        case .bot:
            "Play against this iPhone/iPad."
        case .peer:
            "Invite someone near you who has it"
        case .undetermined:
            ""
        }
    }
}
