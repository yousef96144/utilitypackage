



import Foundation

class APIRequest{
    func asUrlRequest() throws -> URLRequest {  
            var urlComponents = URLComponents()
            urlComponents.scheme = BaseAPIRequest.shared.scheme?.rawValue
            urlComponents.host = BaseAPIRequest.shared.host
        if let path = BaseAPIRequest.shared.path{
            urlComponents.path = path
        }

        if let queryItems = BaseAPIRequest.shared.queryItems {
                urlComponents.queryItems = queryItems
            }

            guard let url = urlComponents.url else {
                throw ApiError(errorCode: "ERROR-0", message: "URL error")
            }

            var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = BaseAPIRequest.shared.requestMethod?.rawValue
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.timeoutInterval = 20.0
        if let body = BaseAPIRequest.shared.body {
                do {
                    urlRequest.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
                } catch {
                    throw ApiError(errorCode: "ERROR-1", message: "Body error")
                }
            }

            return urlRequest
        }
}
