//
//  Hero.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 20/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation
import UIKit

class Hero {
    
    private var name: String
    private let sprite: UIImage
    private let heroClass: HeroClass
    private var lifes: Int
    private let estuf: Estuf
    private var money: Int
    private var exp: Int
    
    init(name: String, sprite: UIImage, heroClass: HeroClass, lifes: Int, money: Int, estuf: Estuf) {
        self.name = name
        self.sprite = sprite
        
        self.heroClass = heroClass
        self.lifes = heroClass.getInitLifes()
        self.estuf = heroClass.getInitEstuf()
        
        self.money = money
        self.exp = 0
    }
    
    public func Attack() {
        // TO DO: Attack logic
    }
    func getTotalStatFromItems(stat: Stat) -> Int {
        var total: Int = 0
        // Loop hero items
        for item in estuf.getItems() {
            // Loop item stats
            for s in item.getStats() {
                // Check for the right stat
                let sName: String = String(describing: type(of: s))
                let statName: String = String(describing: type(of: stat))
                if statName.caseInsensitiveCompare(sName) == .orderedSame {
                    total += stat.getValue()
                }
            }
        }
        
        return total
    }
}
