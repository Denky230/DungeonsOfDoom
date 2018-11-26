//
//  StatsTable.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 26/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation

class StatsTable {
    
    private var stats: [Stat : Int]
    
    init(stats: [Stat : Int]) {
        self.stats = stats
    }
    
    func getStat(stat: Stat) -> Int { return self.stats[stat]! }
    func setStat(stat: Stat, newValue: Int) { self.stats[stat] = newValue }
}
