//
//  UnitModule.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 02/01/2019.
//  Copyright © 2019 Oscar Rossello. All rights reserved.
//

class BattleUnitController {
    
    private let unit: BattleUnit
    private let dices: DicesPickerView
    private let view: BattleUnitPanelView
    
    init(unit: BattleUnit, dices: DicesPickerView, view: BattleUnitPanelView) {
        self.unit = unit
        self.dices = dices
        self.view = view
    }
    
    func getUnit() -> BattleUnit { return self.unit }
    
    func getHitPower() -> Int {
        // Roll every dice and get total
        let hitPower: Int = dices.rollDices()
        // Set total to view label
        view.setHitPower(hitPower: hitPower)
        
        return hitPower
    }
}
