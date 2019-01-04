//
//  BattleUnit.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 02/01/2019.
//  Copyright © 2019 Oscar Rossello. All rights reserved.
//

class BattleUnit {
    
    private var lifes: Int
    private let stats: StatsTable
    
    init(lifes: Int, stats: StatsTable) {
        self.lifes = lifes
        self.stats = stats
    }
    
    func getLifes() -> Int { return self.lifes }
    func getStatsTable() -> StatsTable { return self.stats }
    
    func takeDamage() {
        self.lifes -= 1
    }
}
