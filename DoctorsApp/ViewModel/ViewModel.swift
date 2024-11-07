//
//  ViewModel.swift
//  DoctorsApp
//
//  Created by Алексей Попов on 06.11.2024.
//

import Foundation

@MainActor
final class ViewModel: ObservableObject {
    
    @Published var users: [User] = []
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        guard users.isEmpty else { return }
        
        Task {
            do {
                let dataClass = try await NetworkManager.shared.getData(urlString: URLConstants.userURL)
                self.users = dataClass.data.users
            } catch {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
}

