//
//  ContentView.swift
//  HackChallenge
//
//  Created by Parsa Tehranipoor on 4/26/25.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @State private var currView : String = "Recents"
    @State var user: User?
    
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("")
                }
            
            
            ProfileView(user: user)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("")
                }
        }
        .onAppear {
            getUser()
        }
    }
    
    func getUser() {
        let id = 1

        NetworkManager.shared.fetchUser(withID: id) { fetchedUser in
            DispatchQueue.main.async {
                self.user = fetchedUser
            }
        }
    }
    
}

#Preview {
    ContentView()
}
