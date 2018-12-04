//
//  Shop.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 04/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

class Shop {
    
    var shopItems: [ShopItem] = GameVariables.shopStartingItems
    
    func getShopItems() -> [ShopItem] { return self.shopItems }
    func addItem(item: ShopItem) { shopItems.append(item) }
    
    func buyItem(item: ShopItem) {
        // Check if hero has enough money
        if hero!.getMoney() >= item.price {
            // TO DO: buy item
            print("item bought")
        } else {
            print("not enough money")
        }
    }
}
