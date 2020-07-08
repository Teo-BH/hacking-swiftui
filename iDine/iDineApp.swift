//
//  iDineApp.swift
//  iDine
//
//  Created by Teobaldo Mauro de Moura on 07/07/20.
//

import SwiftUI

@main
struct iDineApp: App {
    var order = Order()
    var favorite = Favorite()

    var body: some Scene {
        WindowGroup {
            AppView()
                .environmentObject(order)
                .environmentObject(favorite)
        }
    }
}
