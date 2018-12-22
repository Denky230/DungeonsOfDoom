//
//  Monster.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 21/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Monster: Describable {
    
    internal var sprite: UIImage
    
    private var name: String
    private var lifes: Int
    private var statsTable: StatsTable
    private let moneyDrop: Int
    
    init(name: String, sprite: UIImage, lifes: Int, statsTable: StatsTable, moneyDrop: Int) {
        self.name = name
        self.sprite = sprite
        self.lifes = lifes
        self.statsTable = statsTable
        self.moneyDrop = moneyDrop
    }
    
    public func Attack() {
        // TO DO: Attack logic
    }
    
    func getDescription() -> String { return "" }
}
