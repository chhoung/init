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
    let dimension: String
    let description: String
}

extension Item {
    static func stub() -> [Item] {
        return [
            Item(image: "miles",
                 title: "Miles Morale",
                 dimension: "Earth 616",
                 description: "Fuga et ad tempore vel. Repudiandae magni saepe cupiditate quia amet. Similique quas et possimus et qui voluptatem ipsam vel aut. Nostrum sed ut et. Voluptatem debitis magni sed quo enim voluptatem aut. Dolores quo excepturi modi explicabo est. Sit unde quia. Eum quo vel cum ut. Corrupti saepe omnis dolor. Dolorem eveniet ipsa eveniet atque illo est nisi omnis sunt. Debitis consequatur nihil ut fugiat maiores ullam."
                ),
            Item(image: "gwen",
                 title: "Gwen Stacy",
                 dimension: "Earth 123",
                 description: "Description A"
                ),
            Item(image: "miguel",
                 title: "Miguel Ohara",
                 dimension: "Earth 616",
                 description: "Description A"
                ),
            Item(image: "pavitr",
                 title: "Pavitr",
                 dimension: "Earth 321",
                 description: "Description A"
                ),
            Item(image: "peterb",
                 title: "Peter B. Parker",
                 dimension: "Earth 832",
                 description: "Description A"
                ),
            Item(image: "spiderpunk",
                 title: "Spider Punk",
                 dimension: "Earth 723",
                 description: "Description A"
                ),
            Item(image: "spot",
                 title: "The Spot",
                 dimension: "Earth 616",
                 description: "Description A"
                ),
        ]
    }
}
