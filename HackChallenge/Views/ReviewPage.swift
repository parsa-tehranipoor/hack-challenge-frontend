//
//  ReviewPage.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 5/2/25.
//

import SwiftUI

struct ReviewPage: View {
    let review: Review
    @State private var user: User?
    @State private var eatery: Eatery?

    var body: some View {
        VStack(alignment: .leading) {
            if let user = user, let eatery = eatery {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        // Header: User + Eatery Info
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text(user.username)
                                    .font(.system(size: 28))
                                    .fontWeight(.semibold)

                                Text(eatery.location)
                                    .font(.system(size: 20))
                                    .fontWeight(.light)
                                    .foregroundColor(.gray)
                            }

                            Spacer()

                            Image("ArrowIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        }
                        .padding(.horizontal)

                        // Star Rating Image
                        Image("\(getNumHalfStars())Star")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .padding(.horizontal)

                        // Full Review Text
                        Text(review.reviewText)
                            .font(.system(size: 20))
                            .padding(.horizontal)

                        Spacer()
                    }
                    .padding(.top)
                }
            } else {
                ProgressView("Loading...")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .onAppear {
            getUser()
            getEatery()
        }
    }

    private func getUser() {
        NetworkManager.shared.fetchUser(withID: review.userID) { fetchedUser in
            DispatchQueue.main.async {
                self.user = fetchedUser
            }
        }
    }

    private func getEatery() {
        NetworkManager.shared.fetchEatery(withID: review.eateryID) { fetchedEatery in
            DispatchQueue.main.async {
                self.eatery = fetchedEatery
            }
        }
    }

    private func getNumHalfStars() -> Int {
        var numHalfStars = 0
        for index in 1...10 {
            if Double(index) <= review.rating * 2 {
                numHalfStars += 1
            }
        }
        return numHalfStars
    }
}
