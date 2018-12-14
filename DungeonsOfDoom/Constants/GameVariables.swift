//
//  GameVariables.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 28/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class GameVariables {
    
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
            armorType: .plate,
            price: 10
        ),
        ShopItem(
            name: "item_02",
            sprite: UIImage(named: "dice20")!,
            statsTable: StatsTable(stats: [
                .attack : 5,
                .defense : 5
            ]),
            armorPiece: .chest,
            armorType: .plate,
            price: 2000
        )
    ]
}
