//
//  Shop.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 04/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

class Shop {
    
    static private var shopItems: [ShopItem] = GameVariables.shopStartingItems
    
    static func getShopItem(index: Int) -> ShopItem { return self.shopItems[index] }
    static func getShopItems() -> [ShopItem] { return self.shopItems }
    static func addItem(item: ShopItem) { shopItems.append(item) }
    
    static func buyItem(item: ShopItem) {
        // Check if hero has enough money
        if currHero.getMoney() >= item.getPrice() {
            // TO DO: buy item
            print("item bought")
            currHero.getEquipment().equipItem(item: item)
            currHero.setMoney(money: currHero.getMoney() - item.getPrice())
        } else {
            print("not enough money")
        }
    }
}
