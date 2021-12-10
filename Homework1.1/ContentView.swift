//
//  ContentView.swift
//  Homework1.1
//
//  Created by Артем Порозов on 07.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection: Int = 0
    @State private var isSixthActive: Bool = false

    var body: some View {
        
        TabView(selection: $tabSelection) {
            FirstScreen(tabSelection: $tabSelection, isSixthActive: $isSixthActive)
                .tabItem {
                    Label("First Screen", systemImage: "paperplane")
                }
                .tag(0)
            SecondScreen(isSixthActive: $isSixthActive)
                .tabItem {
                    Label("Second Screen", systemImage: "folder")
                }
                .tag(1)
            ThirdScreen()
                .tabItem {
                    Label("Third Screen", systemImage: "person")
                }
                .tag(2)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
