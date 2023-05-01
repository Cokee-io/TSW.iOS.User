//
//  Networker.swift
//  TswUseriOS
//
//  Created by 최연택 on 2023/05/01.
//

import Foundation
import Combine

protocol NetworkerProtocol: AnyObject {
    typealias Headers = [String: Any]
    
    func get<T>(type: T.Type, url: URL, headers: Headers) -> AnyPublisher<T, Error> where T: Decodable
    func post<T>(type: T.Type, url: URL, headers: Headers, body: Encodable) -> AnyPublisher<T, Error> where T: Decodable
    func postWithMultipart<T>(type: T.Type, url: URL, headers: Headers, parameters: [String: Any]) -> AnyPublisher<T, Error> where T: Decodable
}


final class Networker: NetworkerProtocol {
    
    func get<T>(type: T.Type, url: URL, headers: Headers) -> AnyPublisher<T, Error> where T: Decodable {
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        headers.forEach { key, value in
            if let value = value as? String {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    func getData(url: URL, headers: Headers) -> AnyPublisher<Data, URLError> {
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        headers.forEach { key, value in
            if let value = value as? String {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .eraseToAnyPublisher()
    }
    
    func post<T>(type: T.Type, url: URL, headers: Headers, body: Encodable) -> AnyPublisher<T, Error> where T: Decodable {
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpMethod = "POST"
        headers.forEach { key, value in
            if let value = value as? String {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    func postWithMultipart<T>(type: T.Type, url: URL, headers: Headers, parameters: [String: Any]) -> AnyPublisher<T, Error> where T: Decodable {
        let boundary = "Boundary-\(UUID().uuidString)"
        
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpMethod = "POST"
        
        headers.forEach { key, value in
            if let value = value as? String {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        urlRequest.httpBody = createBody(parameters: parameters, boundary: boundary)
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    private func createBody(parameters: [String:Any], boundary: String) -> Data {
        var body = Data()
        let boundaryPrefix = "--\(boundary)\r\n"
        
        for (key, value) in parameters {
            if let imageValue = value as? ImageFile {
                body.append(boundaryPrefix.data(using: .utf8)!)
                body.append("Content-Disposition: form-data; name=\"\(key)\"; filename=\"\(imageValue.filename)\"\r\n".data(using: .utf8)!)
                body.append("Content-Type: image/\(imageValue.type)\r\n\r\n".data(using: .utf8)!)
                body.append(imageValue.data)
                body.append("\r\n".data(using: .utf8)!)
            } else {
                body.append(boundaryPrefix.data(using: .utf8)!)
                body.append("Content-Disposition: form-data; name=\"\(key)\"\r\n\r\n".data(using: .utf8)!)
                body.append("\(value)\r\n".data(using: .utf8)!)
            }
        }
        
        body.append(boundaryPrefix.data(using: .utf8)!)
        
        return body
    }
}

struct ImageFile {
    let filename: String
    let data: Data
    let type: String
}
