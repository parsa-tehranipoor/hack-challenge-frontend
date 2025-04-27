//
//  ContentView.swift
//  A4
//
//  Created by Parsa Tehranipoor on 4/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var recipes: [Recipe] = Recipe.dummyData
    var filteredRecipes: [Recipe] {
        if selectedDifficulty == "All" {
            return recipes
        } else {
            return recipes.filter { $0.difficulty == selectedDifficulty }
        }
    }
    let columns = [GridItem(.flexible(), spacing: 33), GridItem(.flexible(), spacing: 33)]
    
    @State private var selectedDifficulty = "All"
    private let difficulties: [String] = ["All", "Beginner", "Intermediate", "Advanced"]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("ChefOS")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                    .padding(.leading, 32)
                
                difficultyButtons
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 33) {
                        ForEach(filteredRecipes) { recipe in
                            NavigationLink {
                                RecipePage(recipe: recipe)
                            } label: {
                                RecipeCell(recipe: recipe)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                .padding(.trailing, 32)
                .padding(.leading, 32)
            }
        }
        .onAppear {
            getRecipes()
        }
    }
    
    func getRecipes() {
        NetworkManager.shared.fetchRecipes { [self] fetchedRecipes in
            self.recipes = fetchedRecipes
        }
    }
    
    var difficultyButtons : some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(difficulties, id: \.self) { difficulty in
                    Button(action: {
                        selectedDifficulty = difficulty
                    }) {
                        Text(difficulty)
                            .padding(.leading, 24)
                            .padding(.trailing, 24)
                            .padding(.top, 8)
                            .padding(.bottom, 8)
                            .background(
                                Capsule()
                                    .fill(selectedDifficulty == difficulty ? Color.yellow : Color.gray.opacity(0.3))
                                
                            )
                            .foregroundColor(selectedDifficulty == difficulty ? .white : .black)
                    }
                }
            }
            .padding(.top, 8)
            .padding(.bottom, 24)
            .padding(.leading, 32)
            
        }
    }
}

#Preview {
    ContentView()
}
