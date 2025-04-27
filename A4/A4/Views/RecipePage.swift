//
//  RecipePage.swift
//  A4
//
//  Created by Parsa Tehranipoor on 4/24/25.
//

import SwiftUI

struct RecipePage: View {
    let recipe: Recipe
    @State var clicked: Bool = false
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .cornerRadius(12)
            } placeholder: {
                ProgressView()
            }
            .padding(.bottom, 32)
            
            Text(recipe.name)
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .padding(.bottom, 16)
            
            Text(recipe.description)
                .font(.system(size: 14))
                .fontWeight(.regular)
                .foregroundColor(Color(hex: 0xBFBFBF))
        }
        .padding(.trailing, 32)
        .padding(.leading, 32)
        .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            clicked.toggle()
                        } label: {
                            Image(clicked ? "BookmarkClicked" : "BookmarkUnClicked")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                    }
                }
    }
}

