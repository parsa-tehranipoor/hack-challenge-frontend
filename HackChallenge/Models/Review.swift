//
//  Rating.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 4/26/25.
//

import Foundation

struct Review: Codable, Identifiable {
    let id: Int
    let userID: Int
    let eateryID: Int
    let rating: Double
    let reviewText: String
    let timestamp: String

    enum CodingKeys: String, CodingKey {
        case id
        case userID = "user_id"
        case eateryID = "eatery_id"
        case rating
        case reviewText = "review_text"
        case timestamp
    }
}

struct ReviewListResponse: Codable {
    let reviews: [Review]
}

extension Review {
    static let dummyData: [Review] = []
}
