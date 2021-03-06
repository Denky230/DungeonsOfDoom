//
//  Warrior.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 26/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation

class Warrior: Hero {
    
    init(name: String) {
        super.init(
            name: name,
            sprite: ClassProperties.Warrior.sprite!,
            lifes: ClassProperties.Warrior.baseLifes,
            baseStats: ClassProperties.Warrior.baseStats,
            equipment: Equipment(wearableArmorTypes: ClassProperties.Warrior.wearableArmorTypes),
            baseItems: ClassProperties.Warrior.baseItems
        )
    }
}
