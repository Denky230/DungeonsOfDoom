//
//  Mage.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 26/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation

class Mage: Hero {

    init(name: String) {
        super.init(name: name, sprite: ClassProperties.Mage.sprite!, lifes: ClassProperties.Mage.startingLifes, equipment: ClassProperties.Mage.startingEquipment, baseStats: ClassProperties.Mage.baseStats)
    }
}
