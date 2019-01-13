//
//  DiceSet.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 07/01/2019.
//  Copyright © 2019 Oscar Rossello. All rights reserved.
//

import UIKit

class DiceSet {
    
    private let dices: [Dice]
    
    init(dices: [Dice]) {
        self.dices = dices
    }
    
    convenience init(formatString: String, size: Int) {
        var dices: [Dice] = [Dice]()
        // Create 'size' Dices
        for i in 1 ... size {
            // Use index to build the sprite name (e.g. dice00, dice01, dice02, etc.)
            let spriteName = String(format: formatString, i)
            let dice = Dice(sprite: UIImage(named: spriteName)!, value: i)
            dices.append(dice)
        }
        
        self.init(dices: dices)
    }
    
    func getDices() -> [Dice] { return self.dices }
}
