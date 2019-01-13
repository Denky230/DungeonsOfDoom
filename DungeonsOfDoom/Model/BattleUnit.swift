//
//  BattleUnit.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 02/01/2019.
//  Copyright © 2019 Oscar Rossello. All rights reserved.
//

class BattleUnit {
    
    private var lifes: Int
    private var maxLifes: Int
    private let stats: StatsTable
    
    init(lifes: Int, stats: StatsTable) {
        self.maxLifes = lifes
        self.lifes = maxLifes
        self.stats = stats
    }
    
    func getLifes() -> Int { return self.lifes }
    func getMaxLifes() -> Int { return self.maxLifes }
    func getStatsTable() -> StatsTable { return self.stats }
    
    func calculateDamage() -> Int {
        var damage: Int = 0
        if let attack = stats.getStats()[.ATK] {
            damage = attack
        }
        
        return damage
    }
    func calculateDices() -> Int {
        let damage: Int = calculateDamage()
        let dices: Int
        
        if damage > 0 && damage <= 3 {
            dices = 1
        } else if damage >= 4 && damage <= 6 {
            dices = 2
        } else {
            dices = 3
        }
        
        return dices
    }
    
    func takeDamage() {
        self.lifes -= 1
    }
    
    func reset() {
        self.lifes = self.maxLifes
    }
}
