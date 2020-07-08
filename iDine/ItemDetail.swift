//
//  ItemDetail.swift
//  iDine
//
//  Created by Teobaldo Mauro de Moura on 07/07/20.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    @EnvironmentObject var favorite: Favorite
    var item: MenuItem

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Button("Order This") {
                self.order.add(item: self.item)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .font(.headline)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(.horizontal, 20)

            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
        .navigationBarItems(trailing:
            Button(action: flipFavoriteToggle) {
                let imageName = favorite.items.contains(item) ? "heart.fill" : "heart"
                Image(systemName: imageName).imageScale(.large)
            }
        )
    }

    func flipFavoriteToggle() {
        if favorite.items.contains(item) {
            favorite.remove(item: item)
        } else {
            favorite.add(item: item)
        }
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    static let favorite = Favorite()

    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example)
                .environmentObject(order)
                .environmentObject(favorite)
        }
    }
}
