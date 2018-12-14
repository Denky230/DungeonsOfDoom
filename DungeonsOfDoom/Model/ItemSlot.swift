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
    
    func getItem() -> Item { return self.item! }    
    func setItem(item: Item) { self.item = item }
}
