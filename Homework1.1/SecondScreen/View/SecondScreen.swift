//
//  SecondScreen.swift
//  Homework1.1
//
//  Created by Артем Порозов on 07.12.2021.
//

import SwiftUI

struct SecondScreen: View {
    
    @Binding var isSixthActive: Bool

    var body: some View {
        NavigationView() {
            SecondScreenListView(isSixthActive: $isSixthActive)
        }
    }
    
}

struct SecondScreenListView: View {
    
    @EnvironmentObject var secondScreenViewModel: SecondScreenViewModel

    @Binding var isSixthActive: Bool

    var body: some View {
        List {
            NavigationLink(destination: LazyView(FifthScreen()), isActive: $secondScreenViewModel.isFifthActive, label: {
                Text("Show Fifth Screen")
            })
            NavigationLink(destination: LazyView(SixthScreen()), isActive: $isSixthActive, label: {
                Text("Show Sixth Screen")
            })
        }
        .navigationBarTitle(Text(secondScreenViewModel.title))
    }
}
