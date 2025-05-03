//
//  User.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 4/26/25.
//
import Foundation

struct User: Identifiable, Codable {
    let id: Int
    let name: String
    let username: String
    let bio: String
    let timestamp: Date
    let ratingsCount: Int
    let averageRating: Float
    let ranking: Int
    var followerIDs: [Int]    // users who follow this user
    var followingIDs: [Int]
}
