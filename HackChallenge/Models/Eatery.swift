//
//  Eatery.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 5/1/25.
//
import Foundation

struct Eatery: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let location: String
    let averageRating: Float
}
