//
//  DoctorDetailView.swift
//  DoctorsApp
//
//  Created by Алексей Попов on 07.11.2024.
//

import SwiftUI

struct DoctorDetailView: View {
    let user: User

    var body: some View {
        VStack(spacing: 20) {
            if let avatarURL = user.avatar, let url = URL(string: avatarURL) {
                AsyncImage(url: url) { image in
                    image.resizable()
                        .frame(width: 300, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .padding()
                } placeholder: {
                    ProgressView()
                }
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .foregroundStyle(.gray)
                    .padding()
            }

            Text("\(user.firstName) \(user.patronymic) \(user.lastName)")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Cтепень: \(user.scientificDegreeLabel)")
                .font(.title3)
            
            Text("Стаж: \(user.seniority) лет")
                .font(.title3)

            Text("Категория: \(user.categoryLabel)")
                .font(.title3)

            Text("Стоимость видео-чата: \(user.videoChatPrice) ₽")
                .font(.title3)

            Spacer()
        }
        .padding()
        .navigationTitle("Детальная информация")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DoctorListView()
}

