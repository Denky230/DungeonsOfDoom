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
    private var lifes: Int
    private var money: Int
    private var exp: Int
    private let estuf: Estuf
    
    init(name: String, sprite: UIImage, lifes: Int, exp: Int, money: Int, estuf: Estuf) {
        self.name = name
        self.sprite = sprite
        self.lifes = lifes
        self.exp = exp
        self.money = money
        self.estuf = estuf
    }
    
    public func getName() -> String { return name }
    public func setName(newName: String) { self.name = newName }
    
    public func getLifes() -> Int { return lifes }
    public func setLifes(newLifes: Int) { self.lifes = newLifes }
    
    public func getExp() -> Int { return exp }
    public func setExp(newExp: Int) { self.exp = newExp }
    
    public func getMoney() -> Int { return money }
    public func setMoney(newMoney: Int) { self.money = newMoney }
    
    public func getEstuf() -> Estuf { return estuf }
}
