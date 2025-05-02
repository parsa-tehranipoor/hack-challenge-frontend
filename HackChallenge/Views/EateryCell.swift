//
//  EateryCell.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 5/2/25.
//

import SwiftUI

struct EateryCell: View {
    let eatery: Eatery
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(eatery.name)
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
                
                Image(String(getNumHalfStars()) + "Star")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 12)
                    .padding(.leading, 12)
            }
            
            Text(eatery.description)
                .font(.system(size: 24))
                .fontWeight(.regular)
                .padding(.top, 12)
                .padding(.leading, 12)
            
        }
    }
    
    func getNumHalfStars() -> Int {
        var numHalfStars = 0
        for index in 1...10 {
            if Float(index) <= eatery.averageRating * 2 {
                numHalfStars += 1
            }
        }
        return numHalfStars
    }
}
