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
    private let UI: BattleUnitPanelView
    
    init(unit: BattleUnit, dices: DicesPickerView, UI: BattleUnitPanelView) {
        self.unit = unit
        self.dices = dices
        self.UI = UI
    }
    
    func getUnit() -> BattleUnit { return self.unit }
    
    private func rollDices() -> Int {
        return Int.random(in: 0 ... 10)
    }
    func getHitPower() -> Int {
        let hitPower = rollDices()
        UI.setHitPower(hitPower: hitPower)
        
        return hitPower
    }
}
