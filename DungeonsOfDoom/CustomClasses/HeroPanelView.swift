//
//  HeroPanel.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 28/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class HeroPanelView: UIView {
    
    private var hero: Hero
    
    init(frame: CGRect, hero: Hero) {
        self.hero = hero
        super.init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var spriteView: UIImageView = {
        let spriteViewFrame: CGRect = CGRect(x: -50, y: -50, width: 50, height: 50)
        let spriteView: UIImageView = UIImageView(frame: CGRect.zero)
        spriteView.image = currHero!.sprite
        
        return spriteView
    }()
    
    var heroInfoView: UIView = {
        let heroInfoViewFrame: CGRect = CGRect(x: 50, y: 50, width: 50, height: 50)
        let heroInfoView: UIView = UIView(frame: heroInfoViewFrame)
        
        let heroNameView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        heroInfoView.addSubview(heroNameView)
        
        let heroStatsView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        heroInfoView.addSubview(heroStatsView)
        
        // TO DO: StatViews
        
        return heroInfoView
    }()
    
    func setUpViews() {
        self.addSubview(spriteView)
    }
}
