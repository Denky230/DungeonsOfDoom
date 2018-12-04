//
//  Item.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 22/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Item : Describable {
    
    internal var sprite: UIImage
    
    private var name: String
    private var statsTable: StatsTable
    private var armorPiece: ArmorPiece
    private var armorType: ArmorType
    
    init(name: String, sprite: UIImage, statsTable: StatsTable, armorPiece: ArmorPiece, armorType: ArmorType) {
        self.name = name
        self.sprite = sprite
        self.statsTable = statsTable
        self.armorPiece = armorPiece
        self.armorType = armorType
    }
    
    func getName() -> String { return self.name }
    func getSprite() -> UIImage { return self.sprite }
    func getStats() -> StatsTable { return self.statsTable }
    func getArmorPiece() -> ArmorPiece { return self.armorPiece }
    func getArmorType() -> ArmorType { return self.armorType }
    
    func getDescription() {}
}
