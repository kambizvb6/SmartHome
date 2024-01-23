//
//  ContentView.swift
//  SmartHome
//
//  Created by Kambiz on 2024-01-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tag(0)
                .tabItem { Image(systemName: "display") }
            
            Text("Water")
                .tag(0)
                .tabItem { Image(systemName: "water.waves") }
            
            Text("Status")
                .tag(0)
                .tabItem { Image(systemName: "chart.bar.fill") }
            
            Text("Profile")
                .tag(0)
                .tabItem { Image(systemName: "person") }
        }
    }
}

#Preview {
    ContentView()
}
