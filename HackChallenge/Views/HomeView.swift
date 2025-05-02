//
//  HomeView.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 5/2/25.
//
import SwiftUI

struct HomeView: View {
    let followersRecentReviews: [Review] = Review.dummyData
    
    var body: some View {
        VStack {
            VStack {
                Image("NewBigRedBeli")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 240)
                    .padding(.top, 28)

                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: 0xD8D8D8))
            .ignoresSafeArea(edges: .top) // Optional: extend under status bar
            
            NavigationStack {
                ScrollView {
                    VStack {
                        ForEach(followersRecentReviews) { review in
                            NavigationLink {
                                ReviewPage(review: review)
                            } label: {
                                ReviewCell(review: review)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .background(Color(hex: 0xD8D8D8))
                }
            }
            .background(Color(hex: 0xD8D8D8))
        }
    }
}
