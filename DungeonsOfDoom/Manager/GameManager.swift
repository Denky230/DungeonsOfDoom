//
//  GameManager.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 27/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

var currHero: Hero!
var selectedEnemy: Monster!

class GameManager {
    
    static func initGame() {
        currHero = Hunter(name: "RIP Mr. G")
    }
    
    static func fight(unit_01: BattleUnitController, unit_02: BattleUnitController) {
        let u01_hitPower = unit_01.getHitPower()
        let u02_hitPower = unit_02.getHitPower()
        
        print("\nR: \(u01_hitPower) - \(u02_hitPower)")
        
        if u01_hitPower > u02_hitPower {
            // UNIT 1 WINS
            print("1 wins")
            unit_02.getUnit().takeDamage()
            
        } else if u02_hitPower > u01_hitPower {
            // UNIT 2 WINS
            print("2 wins")
            unit_01.getUnit().takeDamage()
            
        } else {
            // TIE
            print("empatasión")
        }
    }
}
