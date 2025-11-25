//
//  FavoriteStore.swift
//  Speeltuin
//
//  Created by Axel Roest on 25/11/2025.
//

import Combine

final class FavoriteStore: ObservableObject {
    @Published var favorites: [String] = []
    
    func add(_ id: String) {
        favorites.append(id)
    }
    
    func delete(_ id: String) {
        favorites.removeAll { $0 == id }
    }
}
