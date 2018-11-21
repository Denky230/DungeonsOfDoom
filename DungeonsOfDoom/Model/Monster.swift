//
//  Monster.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 21/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation
import UIKit

class Monster {
    
    private var name: String
    private let sprite: UIImage
    private var lifes: Int
    private var attack: Attack
    private let moneyDrop: Int
    
    init(name: String, sprite: UIImage, lifes: Int, attack: Int, moneyDrop: Int) {
        self.name = name
        self.sprite = sprite
        self.lifes = lifes
        self.attack = Attack(value: attack)
        self.moneyDrop = moneyDrop
    }
}
