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

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}
