//
//  Hunter.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 26/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

class Hunter: Hero {
    
    init(name: String) {
        super.init(
            name: name,
            sprite: ClassProperties.Hunter.sprite!,
            lifes: ClassProperties.Hunter.baseLifes,
            baseStats: ClassProperties.Hunter.baseStats,
            equipment: Equipment(wearableArmorTypes: ClassProperties.Hunter.wearableArmorTypes),
            baseItems: ClassProperties.Hunter.baseItems
        )
    }
}
