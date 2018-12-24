//
//  Hero.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 20/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Hero : Describable {
    
    internal var sprite: UIImage
    
    private var name: String
    private var lifes: Int
    private var money: Int
    private var experience: Int
    private let equipment: Equipment
    private let baseStats: StatsTable
    
    init(name: String, sprite: UIImage, lifes: Int, baseStats: StatsTable, equipment: Equipment, baseItems: [Item]) {
        self.name = name
        self.sprite = sprite
        self.lifes = lifes
        self.money = 500
        self.experience = 0
        self.baseStats = baseStats
        self.equipment = equipment
        
        equipBaseItems(items: baseItems)
    }
    
    func getName() -> String { return self.name }
    func getLifes() -> Int { return self.lifes }
    func getMoney() -> Int { return self.money }
    func getEquipment() -> Equipment { return self.equipment }
    
    func setMoney(money: Int) {
        self.money = money
    }
    
    func equipBaseItems(items: [Item]) {
        let equipment: Equipment = getEquipment()
        for item in items {
            equipment.equipItem(item: item)
        }
    }
    
    func getTotalStatFromItems(stat: Stat) -> Int {
        var total: Int = 0
        // Loop hero items
        for item in equipment.getItems() {
            // Check if item has given stat
            let stats: StatsTable = item.getStatsTable()
            if stats.hasStat(stat: stat) {
                total += stats.getStat(stat: stat)
            }
        }
        
        return total
    }
    func getDescription() -> String {
        var string: String = ""
        // Append each item's description
        for item in equipment.getItems() {
            string.append("\(item.getDescription())\n")
        }
        // Append each stat's total
//        for stat in baseStats.getStats() {
//            string.append("\(stat.key) \(stat.value + getTotalStatFromItems(stat: stat.key)) - ")
//        }
        
        return string
    }
    func Attack() {
        // TO DO: Attack logic
    }
}
