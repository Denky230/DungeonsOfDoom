//
//  ItemSlot.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 21/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation

class ItemSlot {
    
    private var item: Item?
    private var armorPiece: ArmorPiece
    
    init(armorPiece: ArmorPiece) {
        self.armorPiece = armorPiece
    }
    
    func getItem() -> Item { return self.item! }
    func getArmorPiece() -> ArmorPiece { return self.armorPiece }
    
    func setItem(item: Item) { self.item = item }
}
