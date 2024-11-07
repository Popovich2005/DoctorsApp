//
//  NetworkError.swift
//  DoctorsApp
//
//  Created by Алексей Попов on 06.11.2024.
//

import Foundation

enum NetworkError: String, Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response from the server"
    case invalidData = "The data received from the server is invalid"
}
