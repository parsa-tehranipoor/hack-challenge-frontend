//
//  ProfileView.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 5/2/25.
//
import SwiftUI

struct ProfileView: View {
    var user: User?
    
    var body: some View {
        VStack {
            if let user = user {
                Image("NewBigRedBeli")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 240)
                    .padding(.top, 28)

                Spacer()
                
                HStack {
                    Image("person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    
                    VStack {
                        Text(user.username)
                            .font(.system(size: 24))
                            .fontWeight(.regular)
                            .padding(.top, 12)
                            .padding(.leading, 12)
                        
                        Text(user.name)
                            .font(.system(size: 18))
                            .fontWeight(.light)
                            .padding(.top, 4)
                            .padding(.leading, 12)
                    }
                    
                    VStack {
                        Text("Rating Count: " + String(user.ratingsCount))
                            .font(.system(size: 18))
                            .fontWeight(.light)
                            .padding(.top, 4)
                            .padding(.leading, 12)
                        
                        Text("Average Rating: " + String(user.averageRating))
                            .font(.system(size: 18))
                            .fontWeight(.light)
                            .padding(.top, 4)
                            .padding(.leading, 12)
                        
                    }
                    
                    Text(user.bio)
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .padding(.top, 4)
                        .padding(.leading, 12)
                }
            }
            else {
                
            }
        }
    }
}
