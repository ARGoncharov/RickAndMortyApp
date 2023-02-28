//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Алексей  on 28.02.2023.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    ///API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    ///Path components for API, if any
    private let pathComponents: [String]
    ///Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\($0.value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    ///Computed and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    ///Desired http method
    public let httpMethod = "GET"
    
    //MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}


extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
