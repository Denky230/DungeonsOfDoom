//
//  GameVariables.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 28/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class GameData {
    
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
    
    // MONSTERS
    static var monsterTable: [Monster] = [
        Monster(
            name: "monster_01",
            sprite: UIImage(named: "dice1U")!,
            lifes: 2,
            attack: 10,
            moneyDrop: 10
        ),
        Monster(
            name: "monster_02",
            sprite: UIImage(named: "dice2U")!,
            lifes: 2,
            attack: 20,
            moneyDrop: 10
        )
    ]
}
