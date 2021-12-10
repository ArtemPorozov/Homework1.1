//
//  Homework1_1App.swift
//  Homework1.1
//
//  Created by Артем Порозов on 07.12.2021.
//

import SwiftUI

@main
struct Homework1_1App: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(FirstScreenViewModel())
                .environmentObject(SecondScreenViewModel())
                .environmentObject(ThirdScreenViewModel())

        }
    }
    
}
