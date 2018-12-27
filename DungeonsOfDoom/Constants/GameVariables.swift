//
//  GameVariables.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 28/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class GameVariables {
    
    // ITEM POOL
    static let gameItems: [Item] = [
    ]
    
    // SHOP
    static let shopStartingItems: [PricedItem] = [
        Item(
            name: "item_01",
            sprite: UIImage(named: "dice20")!,
            price: 10,
            statsTable: StatsTable(stats: [
                .ATK : 10
            ]),
            armorPiece: .head,
            armorType: .mail
        ),
        Item(
            name: "item_02",
            sprite: UIImage(named: "dice20")!,
            price: 1000,
            statsTable: StatsTable(stats: [
                .ATK : 5,
                .MAG : 5
            ]),
            armorPiece: .chest,
            armorType: .plate
        ),
        Item(
            name: "item_03",
            sprite: UIImage(named: "dice20")!,
            price: 1000,
            statsTable: StatsTable(stats: [
                .ATK : 10,
                .DEF : 2
                ]),
            armorPiece: .head,
            armorType: .cloth
        ),
        Item(
            name: "item_04",
            sprite: UIImage(named: "dice20")!,
            price: 1000,
            statsTable: StatsTable(stats: [
                .ATK : 20,
                .LCK : 2
                ]),
            armorPiece: .head,
            armorType: .plate
        ),
        Item(
            name: "item_05",
            sprite: UIImage(named: "dice20")!,
            price: 1000,
            statsTable: StatsTable(stats: [
                .ATK : 10,
                .DEF : 2
                ]),
            armorPiece: .head,
            armorType: .plate
        )
    ]
}
