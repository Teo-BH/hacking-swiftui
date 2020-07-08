//
//  FavoriteView.swift
//  iDine
//
//  Created by Teobaldo Mauro de Moura on 08/07/20.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var favorite: Favorite

    var body: some View {
        NavigationView {
            List {
                ForEach(favorite.items) { item in
                    ItemRow(item: item)
                }
            }
            .navigationBarTitle("Favorite")
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: EditButton())
        }

    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var favorite: Favorite = {
        let result = Favorite()
        result.add(item: MenuItem.example)
        print(result)
        return result
    }()

    static var previews: some View {
        FavoriteView().environmentObject(favorite)
    }
}
