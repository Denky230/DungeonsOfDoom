//
//  Item.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 22/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Item : Describable, PricedItem {
    
    internal var sprite: UIImage
    internal var price: Int {
        willSet(newValue) {
            if newValue >= 0 {
                self.price = newValue
            }
        }
    }
    
    private var name: String
    private var statsTable: StatsTable
    private var armorPiece: ArmorPiece
    private var armorType: ArmorType
    
    init(name: String, sprite: UIImage, price: Int, statsTable: StatsTable, armorPiece: ArmorPiece, armorType: ArmorType) {
        self.name = name
        self.sprite = sprite
        self.price = price
        self.statsTable = statsTable
        self.armorPiece = armorPiece
        self.armorType = armorType
    }
    
    func getName() -> String { return self.name }    
    func getStatsTable() -> StatsTable { return self.statsTable }
    func getArmorPiece() -> ArmorPiece { return self.armorPiece }
    func getArmorType() -> ArmorType { return self.armorType }
    
    func getDescription() -> String {
        var string: String = "\(self.armorPiece) \(self.armorType)"
        // Append every stat + value
        let statsSorted = getStatsTable().getStats().sorted(by: { $0.key.rawValue < $1.key.rawValue })
        for stat in statsSorted {
            string.append("\n\(stat.key) - \(stat.value)")
        }
        string.append("\nprice: \(self.price)")
        
        return string
    }
}
