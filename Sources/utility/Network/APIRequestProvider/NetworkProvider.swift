//
//  File.swift
//  
//
//  Created by yousef Elaidy on 22/03/2024.
//

import Foundation
import Combine
protocol NetworkProviderProtocol {
    func modelPublisher<T: Decodable>(for endpoint: APIRequest) -> Future<T, Error>
}

class NetworkProvider: NetworkProviderProtocol {
    func modelPublisher<T: Decodable>(for endpoint: APIRequest) -> Future<T, Error> {
        Future { promise in
            Task { [weak self] in
                do {
                    guard let self = self else {
                        throw ApiError(errorCode: "ERROR-3", message: "ModelLoader has been deallocated")
                    }
                    let request: URLRequest
                    do {
                        request = try endpoint.asUrlRequest()
                    } catch {
                        throw ApiError(errorCode: "ERROR-2", message: "Request creation error")
                    }
                    do {
                        let result: T = try await self.executeRequest(request: request)
                        promise(.success(result))
                    } catch {
                        promise(.failure(error))
                    }
                }
            }
        }
    }

    private func executeRequest<T: Decodable>(request: URLRequest) async throws -> T {
        let (data, _) = try await URLSession.shared.data(for: request)
        let decoder = JSONDecoder()

        return try decoder.decode(T.self, from: data)
    }
}
