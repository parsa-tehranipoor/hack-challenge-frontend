//
//  RatingCell.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 4/26/25.
//
import SwiftUI

struct RatingCell: View {
    let rating: Rating

    var body: some View {
        VStack(alignment: .leading) {
            
            Text(rating.locationName)
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.vertical, 4)
                .padding(.leading, 8)
            
            Text(String(rating.rating))
                .font(.system(size: 16))
                .foregroundColor(.white)
                .fontWeight(.regular)
            
            Text(rating.description)
                .font(.system(size: 16))
                .foregroundColor(.white)
                .fontWeight(.regular)
            
        }
        .frame(width: 250, height: 200)
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(Color.red)
    }
}
