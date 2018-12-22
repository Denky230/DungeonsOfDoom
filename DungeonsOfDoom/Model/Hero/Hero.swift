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
    
    init(name: String, sprite: UIImage, lifes: Int, equipment: Equipment, baseStats: StatsTable) {
        self.name = name
        self.sprite = sprite
        self.lifes = lifes
        self.money = 500
        self.experience = 0
        self.equipment = equipment
        self.baseStats = baseStats
    }
    
    public func Attack() {
        // TO DO: Attack logic
    }
    func getTotalStatFromItems(stat: Stat) -> Int {
        var total: Int = 0
        // Loop hero items
        for item in equipment.getItems() {
            // Add the right stat
            total += item.getStatsTable().getStat(stat: stat)
        }
        
        return total
    }
    
    func getName() -> String { return self.name }
    func getLifes() -> Int { return self.lifes }
    func getMoney() -> Int { return self.money }
    
    func getDescription() -> String {
        var string: String = self.name
        for item in equipment.getItems() {
            string.append("\n\(item.getDescription())")
        }
        
        return string
    }
}
