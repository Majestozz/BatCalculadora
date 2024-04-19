//
//  BatCalculadoraApp.swift
//  BatCalculadora
//
//  Created by Alisson Inácio on 12/04/24.
//

import SwiftUI

@main
struct BatCalculadoraApp: App {
    var body: some Scene {
        WindowGroup {
            BatCalculatorView()
                .environmentObject(BatCalculatorView.ViewModel())
        }
    }
}
