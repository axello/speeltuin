//
//  ContentView.swift
//  Speeltuin
//
//  Created by Axel Roest on 25/11/2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var favorites: FavoriteStore
    @State var toys = [Toy]()
    
    var body: some View {
        VStack {
            Button {
                toys.append(Toy.new())
            } label: {
                Image(systemName: "plus")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            List(toys) { toy in
                toyView(toy)
            }
        }
        .padding()
    }
}

private extension ContentView {
    func toyView(_ toy: Toy) -> some View {
        HStack {
            Text(toy.name)
                .font(.headline)
            Spacer()
            favorite(toy)
        }
        .padding()
    }
    
    func favorite(_ toy: Toy) -> some View {
        Button {
            toggleFavorite(toy.id)
        } label: {
            Image(systemName: favorites.favorites.contains(toy.id) ? "star.fill" : "star")
                .font(.title)
                .foregroundColor(.red)
        }
    }
    
    func toggleFavorite(_ id: String) {
        if favorites.favorites.contains(id) {
            favorites.delete(id)
        } else {
            favorites.add(id)
        }
    }

}
#Preview {
    ContentView()
}
