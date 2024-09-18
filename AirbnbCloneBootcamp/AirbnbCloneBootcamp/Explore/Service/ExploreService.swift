//
//  ExploreService.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 17/09/24.
//

import Foundation

struct ExploreService {
    
    static func loadJSON<T: Decodable>(fileName: String, type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        DispatchQueue.global(qos: .userInitiated).async {
            guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
                DispatchQueue.main.async {
                    completion(.failure(NSError(domain: "falha ao encontrar o arquivo", code: -1)))
                }
                return
            }
            
            do {
                let data = try Data(contentsOf: url)
                let object = try JSONDecoder().decode(T.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(object))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
}
