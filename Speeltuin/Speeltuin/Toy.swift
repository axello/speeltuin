//
//  Toy.swift
//  Speeltuin
//
//  Created by Axel Roest on 25/11/2025.
//

import Foundation

struct Toy: Identifiable {
    let id: String
    let name: String
    let description: String
    let price: Double
    
    static func new() -> Toy {
        .init(id: UUID().uuidString,
              name: "New Toy",
              description: "A new toy",
              price: Double.random(in: 1.0...100.0)
        )
    }
}
