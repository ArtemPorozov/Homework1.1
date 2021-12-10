//
//  SecondScreenViewModel.swift
//  Homework1.1
//
//  Created by Артем Порозов on 07.12.2021.
//

import SwiftUI

final class SecondScreenViewModel: ObservableObject {
    
    var title: String = "Second Screen"
    @Published var isModalScreenShown: Bool = false
    
}
