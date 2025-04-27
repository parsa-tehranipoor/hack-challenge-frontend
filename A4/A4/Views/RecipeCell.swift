//
//  RecipeCollectionViewCell.swift
//  A4
//
//  Created by Parsa Tehranipoor on 4/23/25.
//
import SwiftUI

struct RecipeCell: View {
    let recipe: Recipe

    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .cornerRadius(12)
            } placeholder: {
                ProgressView()
            }
            .padding(.bottom, 8)
            
            
            Text(recipe.name)
                .font(.system(size: 16))
                .fontWeight(.semibold)
                .padding(.bottom, 4)
            
            Text("\(String(format: "%.1f", recipe.rating)) ∙ \(recipe.difficulty)")
                .font(.system(size: 12))
                .fontWeight(.regular)
                .foregroundColor(Color(hex: 0xBFBFBF))
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}
