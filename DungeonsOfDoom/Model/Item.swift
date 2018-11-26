//
//  Item.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 22/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation
import UIKit

class Item {
    
    private var sprite: UIImage
    private var statsTable: StatsTable
    private var armorPiece: ArmorPiece
    private var armorType: ArmorType
    
    init(sprite: UIImage, statsTable: StatsTable, armorPiece: ArmorPiece, armorType: ArmorType) {
        self.sprite = sprite
        self.statsTable = statsTable
        self.armorPiece = armorPiece
        self.armorType = armorType
    }
    
    func getStats() -> StatsTable { return self.statsTable }
    func getArmorPiece() -> ArmorPiece { return self.armorPiece }
    func getArmorType() -> ArmorType { return self.armorType }
}
