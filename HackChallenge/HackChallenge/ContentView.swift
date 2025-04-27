//
//  ContentView.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 4/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var currView : String = "Recents"
    let ratings: [Rating] = Rating.dummyData
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                topView
                    .background(Color.red)
                
                ScrollView(.vertical) {
                    LazyVStack {
                        ForEach(ratings) { rating in
                            RatingCell(rating: rating)
                        }
                    }

                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
    
    var topView: some View {
        VStack {
            HStack {
                Text("Big Red Beli")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading, 8)
                
                Spacer()
                
                NavigationLink {
                    Profile()
                } label: {
                    Image("ProfileIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                .padding(.trailing, 8)
            }
            .padding(.top, 8)
            
            HStack {
                Button {
                    currView = "Recents"
                } label: {
                    Text("Recents")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color.gray)
                        .cornerRadius(8)
                }
                
                Button {
                    currView = "Explore"
                } label: {
                    Text("Explore")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color.gray)
                        .cornerRadius(8)
                }
                
                Button {
                    currView = "Suggested"
                } label: {
                    Text("Suggested")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color.gray)
                        .cornerRadius(8)
                }
            }
            .padding(.top, 8)
            .padding(.bottom, 8)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    ContentView()
}
