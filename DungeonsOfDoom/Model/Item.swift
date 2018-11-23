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
    private var stats: [Stat]
    private var armorPiece: ArmorPiece
    private var armorType: ArmorType
    
    init(sprite: UIImage, stats: [Stat], armorPiece: ArmorPiece, armorType: ArmorType) {
        self.sprite = sprite
        self.stats = stats
        self.armorPiece = armorPiece
        self.armorType = armorType
    }
    
    func getStats() -> [Stat] { return self.stats }
    func getArmorPiece() -> ArmorPiece { return self.armorPiece }
    func getArmorType() -> ArmorType { return self.armorType }
}
