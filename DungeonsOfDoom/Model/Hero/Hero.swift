//
//  Hero.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 20/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Hero: BattleUnit, Describable {
    
    internal var sprite: UIImage
    
    private var name: String
    private var money: Int
    private var experience: Int
    private let equipment: Equipment
    
    init(name: String, sprite: UIImage, lifes: Int, baseStats: StatsTable, equipment: Equipment, baseItems: [Item]) {
        self.name = name
        self.sprite = sprite
        self.money = 500
        self.experience = 0
        self.equipment = equipment
        
        super.init(lifes: lifes, stats: baseStats)
        equipBaseItems(items: baseItems)
    }
    
    func getName() -> String { return self.name }
    func getMoney() -> Int { return self.money }
    func getEquipment() -> Equipment { return self.equipment }
    
    func setMoney(money: Int) { self.money = money }
    
    private func equipBaseItems(items: [Item]) {
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
        // Append each stat's total
        let statsSorted = getStatsTable().getStats().sorted(by: { $0.key.rawValue < $1.key.rawValue })
        for stat in statsSorted {
            string.append("\(stat.key) - \(stat.value + getTotalStatFromItems(stat: stat.key))\n")
        }
        
        return string
    }
}
