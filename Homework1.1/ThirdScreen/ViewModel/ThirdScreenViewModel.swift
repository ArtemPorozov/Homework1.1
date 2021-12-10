//
//  ThirdScreenViewModel.swift
//  Homework1.1
//
//  Created by Артем Порозов on 07.12.2021.
//

import SwiftUI

final class ThirdScreenViewModel: ObservableObject {
    
    var title: String = "Third Screen"
    @Published var isModalScreenShown: Bool = false
    
}
