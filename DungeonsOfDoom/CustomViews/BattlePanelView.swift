//
//  BattlePanelView.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 30/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class BattleUnitPanelView: UIView {

    var unit: BattleUnit!
    var hitPower: Int = 0
    
    init(frame: CGRect, unit: BattleUnit) {
        super.init(frame: frame)
        self.unit = unit
        
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpViews()
    }
    
    var sprite: UIImageView {
        let unitDescribable: Describable = unit as! Describable
        let spriteView: UIImageView = UIImageView(frame: CGRect(
                x: 0, y: 0,
                width: frame.width * 0.4,
                height: frame.height
        ))
        spriteView.backgroundColor = UIColor.green
        spriteView.image = unitDescribable.sprite
        
        return spriteView
    }
    
    var info: UIView {
        let infoView: UIView = UIView(frame: CGRect(
                x: sprite.frame.width, y: 0,
                width: frame.width - sprite.frame.width,
                height: frame.height
        ))
        infoView.backgroundColor = UIColor.cyan
        
        // UNIT HEARTS
        let heartsView: UIView = UIView(frame: CGRect(
                x: 0, y: 0,
                width: infoView.frame.width,
                height: infoView.frame.height / 2
        ))
        heartsView.backgroundColor = UIColor.yellow
        infoView.addSubview(heartsView)
        
        // TO DO: replace by hearts
        // UNIT LIFES
        let lifesLbl: UILabel = UILabel(frame: heartsView.frame)
        lifesLbl.font = lifesLbl.font.withSize(15)
        lifesLbl.text = "\(unit.getLifes())"
        heartsView.addSubview(lifesLbl)
        
        // UNIT ATTACK
        let attackLbl: UILabel = UILabel(frame: CGRect(
            x: 0, y: heartsView.frame.height,
            width: infoView.frame.width,
            height: infoView.frame.height - heartsView.frame.height
        ))
        attackLbl.text = "Hit Power: \(hitPower)"
        attackLbl.font = attackLbl.font.withSize(15)
        attackLbl.backgroundColor = UIColor.orange
        infoView.addSubview(attackLbl)
        
        return infoView
    }
    
    func setUpViews() {
        self.addSubview(sprite)
        self.addSubview(info)
    }
    
    func setHitPower(hitPower: Int) {
        self.hitPower = hitPower
    }
}
