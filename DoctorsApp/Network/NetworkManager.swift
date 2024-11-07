//
//  NetworkManager.swift
//  DoctorsApp
//
//  Created by Алексей Попов on 06.11.2024.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let decoder = JSONDecoder()
    
    func getData(urlString: String) async throws -> DataClass {
        guard let urlString = URL(string: urlString) else { throw NetworkError.invalidData }
        
        let (data, response) = try await URLSession.shared.data(from: urlString)
        guard let response = response as? HTTPURLResponse, response.statusCode ==  200 else {
            throw NetworkError.invalidResponse
        }
        do {
            return try decoder.decode(DataClass.self, from: data)
        } catch {
            throw NetworkError.invalidData
        }
    }
}
