//
//  Gear.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 22/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Equipment {
    
    private var itemSlots: [ArmorPiece : ItemSlot]
    private let wearableArmorTypes: [ArmorType]
    
    init(wearableArmorTypes: [ArmorType]) {
        self.wearableArmorTypes = wearableArmorTypes
        self.itemSlots = [
            .head : ItemSlot(),
            .shoulders : ItemSlot(),
            .chest : ItemSlot(),
            .gloves : ItemSlot(),
            .pants : ItemSlot(),
            .boots : ItemSlot(),
            .ring : ItemSlot(),
            .weapon : ItemSlot(),
        ]
    }
    
    func getItems() -> [Item] {
        var items: [Item] = [Item]()
        // Get Item in every ItemSlot
        for itemSlot in itemSlots.values {
            if !itemSlot.isEmpty() {
                items.append(itemSlot.getItem())
            }
        }
        
        return items
    }
    
    func equipItem(item: Item) {
        // Make sure item is the right armor type
        for armorType in wearableArmorTypes {
            if item.getArmorType() == armorType {
                // Equip item in the right slot
                itemSlots[item.getArmorPiece()]!.setItem(item: item)
                print("Item equipped")
                break
            }
        }
    }
}
