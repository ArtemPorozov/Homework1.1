//
//  ThirdScreen.swift
//  Homework1.1
//
//  Created by Артем Порозов on 07.12.2021.
//

import SwiftUI

struct ThirdScreen: View {
    
    @EnvironmentObject var thirdScreenViewModel: ThirdScreenViewModel

    var body: some View {
        
        NavigationView {
            ModalScreenOpenerView()
                .navigationBarTitle(Text(thirdScreenViewModel.title))
        }
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
