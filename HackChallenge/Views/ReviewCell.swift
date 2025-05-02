//
//  RatingCell.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 4/26/25.
//
import SwiftUI

struct ReviewCell: View {
    let review: Review
    @State private var user: User?
    @State private var eatery: Eatery?

    var body: some View {
        if let user = user {
            if let eatery = eatery {
                VStack {
                    HStack(alignment: .top) {
                        VStack {
                            Text(user.username)
                                .font(.system(size: 24))
                                .fontWeight(.regular)
                                .padding(.top, 12)
                                .padding(.leading, 12)
                            
                            Text(eatery.location)
                                .font(.system(size: 18))
                                .fontWeight(.light)
                                .padding(.top, 4)
                                .padding(.leading, 12)
                        }
                        Image("ArrowIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.top, 12)
                            .padding(.leading, 48)
                    }
                    Image(String(getNumHalfStars()) + "Star")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 12)
                        .padding(.leading, 12)
                    
                    Text(review.reviewText)
                        .font(.system(size: 24))
                        .fontWeight(.regular)
                        .padding(.top, 12)
                        .padding(.leading, 12)
                        .lineLimit(2)
                }
                .onAppear {
                    getUser()
                    getEatery()
                }
            }
        }
    }
    
    func getUser() {
        NetworkManager.shared.fetchUser(withID: review.userID) { fetchedUser in
            DispatchQueue.main.async {
                self.user = fetchedUser
            }
        }
    }
    
    func getEatery() {
        NetworkManager.shared.fetchEatery(withID: review.eateryID) { fetchedEatery in
            DispatchQueue.main.async {
                self.eatery = fetchedEatery
            }
        }
    }
    
    func getNumHalfStars() -> Int {
        var numHalfStars = 0
        for index in 1...10 {
            if index <= review.rating * 2 {
                numHalfStars += 1
            }
        }
        return numHalfStars
    }
}
