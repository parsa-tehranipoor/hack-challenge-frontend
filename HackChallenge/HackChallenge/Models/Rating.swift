//
//  Rating.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 4/26/25.
//

import Foundation

struct Rating: Identifiable {
    let id: String
    let locationName: String
    let reviewerName: String
    let rating: Double
    let description: String
    let dateCreated: String
    let friendsTagged: [String]
    let photos: [String]
}

extension Rating {
    static let dummyData = [
        Rating(
            id: "801343ed-fc1b-4ed0-a226-2381f0ec4186",
            locationName: "Morrison",
            reviewerName: "Parsa Tehrani",
            rating: 4.8,
            description: "This is a great place to grab a bite to eat! The food is delicious and the service is friendly. I highly recommend it!",
            dateCreated: "March 3rd, 2025",
            friendsTagged: ["Parsa Tehrani", "Ali Reza"],
            photos: ["https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8368708.jpg&q=60&c=sc&orient=true&poi=auto&h=512"]
        ),
        Rating(
            id: "9d40a3f8-a40f-48c0-9aa6-28031fddde81",
            locationName: "Appel",
            reviewerName: "Kannan Chocakl",
            rating: 4.2,
            description: "Food ain't too bad, not that many options and they don't have the peach cobbler. The bowls are heavenly though and provide hella nurtition.",
            dateCreated: "December 20th, 2024",
            friendsTagged: ["Ali Reza"],
            photos: ["https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8368708.jpg&q=60&c=sc&orient=true&poi=auto&h=512"]
        ),
        Rating(
            id: "0c28ab59-e99d-4ec1-be2f-359a92537560",
            locationName: "Risley",
            reviewerName: "Adam Bomb",
            rating: 4.0,
            description: "THIS SHIT ASS. Naw i'm just jokin, but seriously the food kinda sucks",
            dateCreated: "April 13th, 2025",
            friendsTagged: ["Parsa Tehrani"],
            photos: ["https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8368708.jpg&q=60&c=sc&orient=true&poi=auto&h=512"]
        ),
        Rating(
            id: "ef10e605-65d0-4a85-9fd8-8e3294939473",
            locationName: "Keeton",
            reviewerName: "Jaithra Noogi",
            rating: 3.8,
            description: "I just wish that they would be more consistent with what they offer. I'm vegetarian and so it's often hit or miss. Sometimes they barely have any food options for us but when they do, it's not bad.",
            dateCreated: "October 2nd, 2020",
            friendsTagged: [],
            photos: ["https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8368708.jpg&q=60&c=sc&orient=true&poi=auto&h=512"]
        ),
        Rating(
            id: "a69bdffc-c9ba-428b-8f06-24cef356a611",
            locationName: "Becker",
            reviewerName: "Boogie wid da hoodie",
            rating: 4.5,
            description: "Pretty good.",
            dateCreated: "February 26th, 2024",
            friendsTagged: ["Kanan Chocakl"],
            photos: ["https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8368708.jpg&q=60&c=sc&orient=true&poi=auto&h=512"]
        )
    ]
}
