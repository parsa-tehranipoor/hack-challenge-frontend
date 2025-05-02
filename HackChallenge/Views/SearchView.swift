//
//  SearchView.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 5/2/25.
//
import SwiftUI

struct SearchView: View {
    let eateryList: [Eatery] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(eateryList) { eatery in
                    EateryCell(eatery: eatery)
                }
            }
            .background(Color(hex: 0xD8D8D8))
        }

    }
    
    func getEateries() {
        
    }
}
