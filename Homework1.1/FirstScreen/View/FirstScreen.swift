//
//  FirstScreen.swift
//  Homework1.1
//
//  Created by Артем Порозов on 07.12.2021.
//

import SwiftUI

struct FirstScreen: View {
    
    @EnvironmentObject var firstScreenViewModel: FirstScreenViewModel

    @Binding var tabSelection: Int
    @Binding var isSixthActive: Bool

    var body: some View {
        
        NavigationView {
            Button("Show Sixth Screen\nFrom Second Screen") {
                tabSelection = 1
                isSixthActive.toggle()
            }
            .navigationBarTitle(Text(firstScreenViewModel.title))
        }
    }
}
