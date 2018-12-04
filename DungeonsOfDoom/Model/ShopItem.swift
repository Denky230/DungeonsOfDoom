//
//  ShopItem.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 04/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class ShopItem: Item {
    
    var price: Int
    
    init(name: String, sprite: UIImage, statsTable: StatsTable, armorPiece: ArmorPiece, armorType: ArmorType, price: Int) {
        self.price = price
        super.init(name: name, sprite: sprite, statsTable: statsTable, armorPiece: armorPiece, armorType: armorType)
    }
}
