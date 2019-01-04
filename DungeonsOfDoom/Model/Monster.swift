//
//  Monster.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 21/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Monster: BattleUnit, Describable, Comparable {
    
    internal var sprite: UIImage
    
    private var name: String
    private let moneyDrop: Int
    
    init(name: String, sprite: UIImage, lifes: Int, attack: Int, moneyDrop: Int) {
        self.name = name
        self.sprite = sprite
        self.moneyDrop = moneyDrop
        
        super.init(lifes: lifes, stats: StatsTable(stats: [.ATK : attack]))
    }
    
    func getName() -> String { return self.name }
    func getMoneyDrop() -> Int { return self.moneyDrop }
    
    func getDescription() -> String {
        var string: String = "\(self.name)\nlifes: \(getLifes())"
        // Append each stat with its value
        let statsSorted = getStatsTable().getStats().sorted(by: { $0.key.rawValue < $1.key.rawValue })
        for stat in statsSorted {
            string.append("\n\(stat.key) - \(stat.value)")
        }
        // Append money dropped
        string.append("\nmoney: \(moneyDrop)")
        
        return string
    }
    
    static func < (lhs: Monster, rhs: Monster) -> Bool {
        return lhs.getName() < rhs.getName()
    }
    static func == (lhs: Monster, rhs: Monster) -> Bool {
        return lhs.getName() == rhs.getName()
    }
}
