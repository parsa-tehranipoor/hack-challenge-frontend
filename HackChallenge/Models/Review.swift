//
//  Rating.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 4/26/25.
//

import Foundation

struct Review: Identifiable {
    let id: UUID
    let userID: UUID
    let eateryID: UUID
    let rating: Int
    let reviewText: String
    let timestamp: Date
}

extension Review {
    static let dummyData: [Review] = []
}
