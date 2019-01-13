//
//  Shop.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 04/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

class Shop {
    
    static private var shopItems: [PricedItem] = GameData.shopStartingItems
    
    static func getShopItem(index: Int) -> PricedItem { return self.shopItems[index] }
    static func getShopItems() -> [PricedItem] { return self.shopItems }
    static func addItem(item: PricedItem) { shopItems.append(item) }
    
    static func buyItem(item: PricedItem) {
        // Check if hero has enough money
        if currHero.getMoney() >= item.price {
            // Buy item
            currHero.setMoney(money: currHero.getMoney() - item.price)
            // Equip item
            currHero.getEquipment().equipItem(item: item as! Item)
        } else {
            print("not enough money")
        }
    }
}
