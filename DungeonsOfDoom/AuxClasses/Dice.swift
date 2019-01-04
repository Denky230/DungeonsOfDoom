//
//  Dice.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 30/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Dice {
    
    private let sprite: UIImage
    private var value: Int
    
    init(sprite: UIImage, value: Int) {
        self.sprite = sprite
        self.value = value
    }
    convenience init() {
        self.init(sprite: UIImage(named: "dice1")!, value: 1)
    }
    
    func getSprite() -> UIImage { return self.sprite }
    func getValue() -> Int { return self.value }
}

