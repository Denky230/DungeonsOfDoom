//
//  HeroPanel.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 28/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class HeroPanelView: UIView {
    
    private var hero: Hero?
    
    init(frame: CGRect, hero: Hero) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpViews()
    }
    
    let sprite: UIImageView = {
        let spriteViewFrame: CGRect = CGRect(x: 0, y: 50, width: 150, height: 150)
        let spriteView: UIImageView = UIImageView(frame: spriteViewFrame)
        spriteView.backgroundColor = UIColor.gray
        spriteView.image = currHero.sprite
        
        return spriteView
    }()
    
    let heroInfo: UIView = {
        let heroInfoViewFrame: CGRect = CGRect(x: 150, y: 50, width: 170, height: 150)
        let heroInfoView: UIView = UIView(frame: heroInfoViewFrame)
        heroInfoView.backgroundColor = UIColor.orange

        // HERO NAME + HEARTS
        let heroNameView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: heroInfoView.frame.width, height: heroInfoView.frame.height / 3))
        heroInfoView.addSubview(heroNameView)
        heroNameView.backgroundColor = UIColor.yellow

        let heroName: UILabel = {
            let label: UILabel = UILabel(frame: CGRect(x: 0, y: heroNameView.frame.height * 0.2, width: heroNameView.frame.width / 2, height: heroNameView.frame.height * 0.80))
            label.backgroundColor = UIColor.green
            label.text = currHero.getName()

            return label
        }()
        heroNameView.addSubview(heroName)

        // HERO STATS
        let heroStatsView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: heroNameView.frame.width, height: 200))
        heroInfoView.addSubview(heroStatsView)
        
        let heroStats: UILabel = {
            let label: UILabel = UILabel(frame: heroStatsView.frame)
            label.text = currHero.getDescription()
            label.font = label.font.withSize(15)
            label.numberOfLines = 0
            
            return label
        }()
        heroStatsView.addSubview(heroStats)

        return heroInfoView
    }()
    
    func setUpViews() {
        self.addSubview(sprite)
        self.addSubview(heroInfo)
    }
}
