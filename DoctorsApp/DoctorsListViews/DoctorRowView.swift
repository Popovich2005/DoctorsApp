//
//  DoctorRowView.swift
//  DoctorsApp
//
//  Created by Алексей Попов on 07.11.2024.
//

import SwiftUI

struct DoctorRowView: View {
    let user: User

    var body: some View {
        HStack {
            if let avatarURL = user.avatar, let url = URL(string: avatarURL) {
                AsyncImage(url: url) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .foregroundStyle(.gray)
            }

            VStack(alignment: .leading) {
                Text("\(user.firstName) \(user.lastName)")
                    .font(.headline)
                Text("Категория: \(user.categoryLabel)")
                    .foregroundStyle(.secondary)
            }
        }
    }
}

