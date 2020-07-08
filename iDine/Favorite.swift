//
//  Favorite.swift
//  iDine
//
//  Created by Teobaldo Mauro de Moura on 08/07/20.
//

import SwiftUI

class Favorite: ObservableObject {
    @Published var items = [MenuItem]()

    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
