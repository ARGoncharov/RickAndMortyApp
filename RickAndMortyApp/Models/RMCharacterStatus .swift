//
//  RMCharacterStatus .swift
//  RickAndMortyApp
//
//  Created by Алексей  on 28.02.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
