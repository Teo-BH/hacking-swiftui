//
//  ItemRow.swift
//  iDine
//
//  Created by Teobaldo Mauro de Moura on 07/07/20.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem

    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
