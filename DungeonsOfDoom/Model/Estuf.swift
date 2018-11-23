//
//  Gear.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 22/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation

class Estuf {
    
    private let itemSlots: [ItemSlot]
    private let wearableArmorTypes: [ArmorType]
    
    init(wearableArmorTypes: [ArmorType]) {
        self.wearableArmorTypes = wearableArmorTypes
        self.itemSlots = [
            ItemSlot(armorPiece: .head),
            ItemSlot(armorPiece: .shoulders),
            ItemSlot(armorPiece: .chest),
            ItemSlot(armorPiece: .gloves),
            ItemSlot(armorPiece: .pants),
            ItemSlot(armorPiece: .boots),
            ItemSlot(armorPiece: .ring),
            ItemSlot(armorPiece: .weapon),
        ]
    }
    
    func getItems() -> [Item] {
        var items: [Item] = [Item]()
        for itemSlot in itemSlots {
            items.append(itemSlot.getItem())
        }
        
        return items
    }
    
    public func equipItem(item: Item) {
        // Make sure item is the right armor type
        for armorType in wearableArmorTypes {
            if item.getArmorType() == armorType {
                
                // Equip item in the right slot
                for itemSlot in itemSlots {
                    if item.getArmorPiece() == itemSlot.getArmorPiece() {
                        itemSlot.setItem(item: item)
                    }
                }
            }
        }
    }
}
