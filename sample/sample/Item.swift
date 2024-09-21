//
//  Item.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
}

extension Item {
    static func stub() -> [Item] {
        return [
            Item(image: "miles",
                 title: "Miles Morale",
                 description: "Earth 616"),
            Item(image: "gwen",
                 title: "Gwen Stacy",
                 description: "Earth 123"),
            Item(image: "miguel",
                 title: "Miguel Ohara",
                 description: "Earth 616"),
            Item(image: "pavitr",
                 title: "Pavitr",
                 description: "Earth 321"),
            Item(image: "peterb",
                 title: "Peter B. Parker",
                 description: "Earth 832"),
            Item(image: "spiderpunk",
                 title: "Spider Punk",
                 description: "Earth 723"),
            Item(image: "spot",
                 title: "The Spot",
                 description: "Earth 616"),
        ]
    }
}
