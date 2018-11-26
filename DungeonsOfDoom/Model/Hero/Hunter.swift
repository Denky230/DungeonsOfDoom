//
//  Hunter.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 26/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation

class Hunter : Hero {
    
    init(name: String) {
        super.init(name: name, sprite: ClassProperties.Hunter.sprite!, lifes: ClassProperties.Hunter.startingLifes, equipment: ClassProperties.Hunter.startingEquipment, baseStats: ClassProperties.Hunter.baseStats)
    }
}
