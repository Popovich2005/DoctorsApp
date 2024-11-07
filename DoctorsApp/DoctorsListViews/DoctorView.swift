//
//  DoctorView.swift
//  DoctorsApp
//
//  Created by Алексей Попов on 06.11.2024.
//

import SwiftUI

struct DoctorListView: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.users, id: \.id) { user in
                NavigationLink(destination: DoctorDetailView(user: user)) {
                    DoctorRowView(user: user)
                }
            }
            .navigationTitle("Доктора")
        }
    }
}

#Preview {
    DoctorListView(viewModel: ViewModel())
}
