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
    static let shopStartingItems: [ShopItem] = [
        ShopItem(
            name: "item_01",
            sprite: UIImage(named: "dice20")!,
            statsTable: StatsTable(stats: [
                .attack : 10,
                .defense : 2
            ]),
            armorPiece: .head,
            armorType: .mail,
            price: 10
        ),
        ShopItem(
            name: "item_02",
            sprite: UIImage(named: "dice20")!,
            statsTable: StatsTable(stats: [
                .attack : 5,
                .magic : 5
            ]),
            armorPiece: .chest,
            armorType: .plate,
            price: 2000
        ),
        ShopItem(
            name: "item_03",
            sprite: UIImage(named: "dice20")!,
            statsTable: StatsTable(stats: [
                .attack : 10,
                .defense : 2
                ]),
            armorPiece: .head,
            armorType: .cloth,
            price: 10
        ),
        ShopItem(
            name: "item_04",
            sprite: UIImage(named: "dice20")!,
            statsTable: StatsTable(stats: [
                .attack : 20,
                .luck : 2
                ]),
            armorPiece: .head,
            armorType: .plate,
            price: 10
        ),
        ShopItem(
            name: "item_05",
            sprite: UIImage(named: "dice20")!,
            statsTable: StatsTable(stats: [
                .attack : 10,
                .defense : 2
                ]),
            armorPiece: .head,
            armorType: .plate,
            price: 10
        )
    ]
}
