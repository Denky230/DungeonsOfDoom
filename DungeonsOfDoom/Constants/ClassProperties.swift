//
//  ClassProperties.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 26/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation
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
                Item(name: "item_01", sprite: UIImage(), statsTable: StatsTable(stats: [.attack : 5]), armorPiece: .head, armorType: .plate),
                Item(name: "item_02", sprite: UIImage(), statsTable: StatsTable(stats: [.attack : 10]), armorPiece: .chest, armorType: .plate),
                Item(name: "item_03", sprite: UIImage(), statsTable: StatsTable(stats: [.defense : 5]), armorPiece: .gloves, armorType: .plate),
                Item(name: "item_04", sprite: UIImage(), statsTable: StatsTable(stats: [.defense : 5]), armorPiece: .pants, armorType: .plate),
                Item(name: "item_05", sprite: UIImage(), statsTable: StatsTable(stats: [.luck : 10]), armorPiece: .boots, armorType: .plate),
            ]
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .attack : 5,
                .defense : 5,
                .magic : 0,
                .luck : 2
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
                Item(name: "item_01", sprite: UIImage(), statsTable: StatsTable(stats: [.attack : 1]), armorPiece: .head, armorType: .mail),
                Item(name: "item_02", sprite: UIImage(), statsTable: StatsTable(stats: [.attack : 1]), armorPiece: .chest, armorType: .mail),
                Item(name: "item_03", sprite: UIImage(), statsTable: StatsTable(stats: [.defense : 1]), armorPiece: .gloves, armorType: .mail),
                Item(name: "item_04", sprite: UIImage(), statsTable: StatsTable(stats: [.defense : 1]), armorPiece: .pants, armorType: .mail),
                Item(name: "item_05", sprite: UIImage(), statsTable: StatsTable(stats: [.luck : 1]), armorPiece: .boots, armorType: .mail),
            ]
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .attack : 8,
                .defense : 4,
                .magic : 2,
                .luck : 2
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
                .attack : 10,
                .defense : 2,
                .magic : 5,
                .luck : 2
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
                .attack : 10,
                .defense : 2,
                .magic : 5,
                .luck : 2
            ])
    }
}
