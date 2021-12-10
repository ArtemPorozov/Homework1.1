//
//  SecondScreen.swift
//  Homework1.1
//
//  Created by Артем Порозов on 07.12.2021.
//

import SwiftUI

struct SecondScreen: View {
    
    // TODO: move to ViewModel
    @Binding var isSixthActive: Bool

    var body: some View {
        NavigationView() {
            SecondScreenListView(isSixthActive: $isSixthActive)
        }
    }
    
}

struct SecondScreenListView: View {
    
    @EnvironmentObject var secondScreenViewModel: SecondScreenViewModel
    // TODO: move to ViewModel
    @State private var isFifthActive: Bool = false
    @Binding var isSixthActive: Bool

    
    var body: some View {
        List {
            NavigationLink(destination: LazyView(FifthScreen()), isActive: $isFifthActive, label: {
                Text("Show Fifth Screen")
            })
            NavigationLink(destination: LazyView(SixthScreen()), isActive: $isSixthActive, label: {
                Text("Show Sixth Screen")
            })
        }
        .navigationBarTitle(Text(secondScreenViewModel.title))
    }
}

//struct SecondScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondScreen()
//    }
//}
