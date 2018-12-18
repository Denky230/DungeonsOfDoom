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
            total += item.getStats().getStat(stat: stat)
        }
        
        return total
    }
    
    func getMoney() -> Int { return self.money }
    
    func getDescription() {}
    func getLifes() -> Int {
        return self.lifes
    }
}
