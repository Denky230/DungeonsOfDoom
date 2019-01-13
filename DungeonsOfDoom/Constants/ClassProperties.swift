//
//  ClassProperties.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 26/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class ClassProperties {
    
    // WARRIOR
    struct Warrior {
        static let sprite = UIImage(named: "warrior")
        static let baseLifes: Int = 5
        static let wearableArmorTypes: [ArmorType] = [
                .plate,
                .mail,
                .cloth
            ]
        static let baseItems: [Item] = [
                Item(name: "item_01", sprite: UIImage(), price: 10, statsTable: StatsTable(stats: [.ATK : 5]), armorPiece: .head, armorType: .plate),
                Item(name: "item_02", sprite: UIImage(), price: 10, statsTable: StatsTable(stats: [.ATK : 10]), armorPiece: .chest, armorType: .plate),
                Item(name: "item_03", sprite: UIImage(), price: 10, statsTable: StatsTable(stats: [.DEF : 5]), armorPiece: .gloves, armorType: .plate),
                Item(name: "item_04", sprite: UIImage(), price: 10, statsTable: StatsTable(stats: [.DEF : 5]), armorPiece: .pants, armorType: .plate),
                Item(name: "item_05", sprite: UIImage(), price: 10, statsTable: StatsTable(stats: [.LCK : 10]), armorPiece: .boots, armorType: .plate),
            ]
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .ATK : 5,
                .DEF : 5,
                .MAG : 0,
                .LCK : 2
            ])
    }
    
    // HUNTER
    struct Hunter {
        static let sprite = UIImage(named: "hunter")
        static let baseLifes: Int = 3
        static let wearableArmorTypes: [ArmorType] = [
                .mail,
                .cloth
            ]
        static let baseItems: [Item] = [
                Item(name: "item_01", sprite: UIImage(named: "helmet1")!, price: 10, statsTable: StatsTable(stats: [.ATK : 1]), armorPiece: .head, armorType: .mail),
                Item(name: "item_02", sprite: UIImage(named: "armour")!, price: 10, statsTable: StatsTable(stats: [.ATK : 1]), armorPiece: .chest, armorType: .mail),
                Item(name: "item_03", sprite: UIImage(named: "arrow")!, price: 10, statsTable: StatsTable(stats: [.DEF : 1]), armorPiece: .gloves, armorType: .mail),
                Item(name: "item_04", sprite: UIImage(named: "cap")!, price: 10, statsTable: StatsTable(stats: [.DEF : 1]), armorPiece: .pants, armorType: .mail),
                Item(name: "item_05", sprite: UIImage(named: "boots")!, price: 10, statsTable: StatsTable(stats: [.LCK : 1]), armorPiece: .boots, armorType: .mail),
            ]
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .ATK : 8,
                .DEF : 4,
                .MAG : 2,
                .LCK : 2
            ])
    }
    
    // MAGE
    struct Mage {
        static let sprite = UIImage(named: "mage")
        static let baseLifes: Int = 2
        static let wearableArmorTypes: [ArmorType] = [
                .cloth
            ]
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .ATK : 10,
                .DEF : 2,
                .MAG : 5,
                .LCK : 2
            ])
        static let baseItems: [Item] = [
            
        ]
    }
    
    // WARLOCK
    struct Warlock {
        static let sprite = UIImage(named: "warlock")
        static let baseLifes: Int = 2
        static let startingEquipment: Equipment =
            Equipment(wearableArmorTypes: [
                .cloth
            ])
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .ATK : 10,
                .DEF : 2,
                .MAG : 5,
                .LCK : 2
            ])
    }
}
