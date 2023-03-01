//
//  RMCharacterListViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Алексей  on 01.03.2023.
//

import Foundation

struct RMCharacterListViewViewModel {
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharacterResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.count))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
