//
//  RMGetAllCharacterResponse.swift
//  RickAndMortyApp
//
//  Created by Алексей  on 01.03.2023.
//

import Foundation

struct RMGetAllCharacterResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        var next: String?
        var prev: String?
    }
    
    var info: Info
    let results: [RMCharacter]
}
