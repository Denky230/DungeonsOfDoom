//
//  ClassProperties.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 26/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation
import UIKit

class ClassProperties {
    
    // WARRIOR
    struct Warrior {
        static let sprite = UIImage(named: "")
        static let startingLifes: Int = 5
        static let startingEquipment: Equipment =
            Equipment(wearableArmorTypes: [
                .plate,
                .mail,
                .cloth
            ])
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .attack : 5,
                .defense : 5,
                .magic : 0,
                .luck : 2
            ])
    }
    
    // HUNTER
    struct Hunter {
        static let sprite = UIImage(named: "")
        static let startingLifes: Int = 3
        static let startingEquipment: Equipment =
            Equipment(wearableArmorTypes: [
                .mail,
                .cloth
            ])
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .attack : 8,
                .defense : 4,
                .magic : 2,
                .luck : 2
            ])
    }
    
    // MAGE
    struct Mage {
        static let sprite = UIImage(named: "")
        static let startingLifes: Int = 2
        static let startingEquipment: Equipment =
            Equipment(wearableArmorTypes: [
                .cloth
            ])
        static let baseStats: StatsTable =
            StatsTable(stats: [
                .attack : 10,
                .defense : 2,
                .magic : 5,
                .luck : 2
            ])
    }
}
