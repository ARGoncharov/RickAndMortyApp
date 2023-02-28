//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Алексей  on 28.02.2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Shared Singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: CallBack with data or error
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping(Result<T, Error>) -> Void ) {
        
    }
}



