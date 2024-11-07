//
//  Model.swift
//  DoctorsApp
//
//  Created by Алексей Попов on 06.11.2024.
//

import Foundation

// MARK: - DataClass
struct DataClass: Codable {
    let data: DataContainer
}

// MARK: - DataContainer
struct DataContainer: Codable {
    let users: [User]
}

// MARK: - User
struct User: Codable {
    let id, slug, firstName, patronymic: String
    let lastName, gender: String
    let genderLabel: String
    let specialization: [Specialization]
    let ratings: [Rating]
    let ratingsRating: Double
    let seniority, textChatPrice, videoChatPrice, homePrice: Int
    let hospitalPrice: Int
    let avatar: String?
    let nearestReceptionTime: Int?
    let freeReceptionTime: [FreeReceptionTime]
    let educationTypeLabel: EducationTypeLabel?
    let higherEducation: [HigherEducation]
    let workExpirience: [WorkExpirience]
    let advancedTraining: [AdvancedTraining]
    let rank: Int
    let rankLabel: String
    let scientificDegree: Int
    let scientificDegreeLabel: String
    let category: Int
    let categoryLabel: String
    let isFavorite: Bool

    enum CodingKeys: String, CodingKey {
        case id, slug
        case firstName = "first_name"
        case patronymic
        case lastName = "last_name"
        case gender
        case genderLabel = "gender_label"
        case specialization, ratings
        case ratingsRating = "ratings_rating"
        case seniority
        case textChatPrice = "text_chat_price"
        case videoChatPrice = "video_chat_price"
        case homePrice = "home_price"
        case hospitalPrice = "hospital_price"
        case avatar
        case nearestReceptionTime = "nearest_reception_time"
        case freeReceptionTime = "free_reception_time"
        case educationTypeLabel = "education_type_label"
        case higherEducation = "higher_education"
        case workExpirience = "work_expirience"
        case advancedTraining = "advanced_training"
        case rank
        case rankLabel = "rank_label"
        case scientificDegree = "scientific_degree"
        case scientificDegreeLabel = "scientific_degree_label"
        case category
        case categoryLabel = "category_label"
        case isFavorite = "is_favorite"
    }
}

// MARK: - AdvancedTraining
struct AdvancedTraining: Codable {
    let id: Int
    let organization, position: String
    let endDate: Int
    let file: String
    let isModerated: Bool

    enum CodingKeys: String, CodingKey {
        case id, organization, position
        case endDate = "end_date"
        case file
        case isModerated = "is_moderated"
    }
}


// MARK: - EducationTypeLabel
struct EducationTypeLabel: Codable {
    let id: Int
    let name: String
}

// MARK: - FreeReceptionTime
struct FreeReceptionTime: Codable {
    let time: Int
}

// MARK: - HigherEducation
struct HigherEducation: Codable {
    let id: Int
    let university, specialization, qualification: String
    let startDate, endDate: Int
    let untilNow, isModerated: Bool

    enum CodingKeys: String, CodingKey {
        case id, university, specialization, qualification
        case startDate = "start_date"
        case endDate = "end_date"
        case untilNow = "until_now"
        case isModerated = "is_moderated"
    }
}

// MARK: - Rating
struct Rating: Codable {
    let id: Int
    let name: String
    let value: Double
}

// MARK: - Specialization
struct Specialization: Codable {
    let id: Int
    let name: String
    let isModerated: Bool

    enum CodingKeys: String, CodingKey {
        case id, name
        case isModerated = "is_moderated"
    }
}

// MARK: - WorkExpirience
struct WorkExpirience: Codable {
    let id: Int
    let organization, position: String
    let startDate: Int
    let endDate: Int?
    let untilNow, isModerated: Bool

    enum CodingKeys: String, CodingKey {
        case id, organization, position
        case startDate = "start_date"
        case endDate = "end_date"
        case untilNow = "until_now"
        case isModerated = "is_moderated"
    }
}

