//
//  File.swift
//  
//
//  Created by yousef Elaidy on 22/03/2024.
//

import Foundation
import Combine
protocol Repo {
    var networkProvider: NetworkProviderProtocol { get }
}

class ViewRepo: Repo {
    let networkProvider: NetworkProviderProtocol

    init(networkProvider: NetworkProviderProtocol = NetworkProvider()) {
        self.networkProvider = networkProvider
    }

    func getTopHeadlines<NewsResponse :Codable>() -> AnyPublisher<NewsResponse, Error> {
        let endpoint = APIRequest()
        return networkProvider.modelPublisher(for: endpoint)
            .eraseToAnyPublisher()
    }
}
